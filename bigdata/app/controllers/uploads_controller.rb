class UploadsController < ApplicationController
  #before_action :set_upload, only: [:show, :edit, :update, :destroy]

  # GET /uploads
  # GET /uploads.json
  def index
    @uploads = Upload.all
  end

  # GET /uploads/1
  # GET /uploads/1.json
  def show
  end

  # GET /uploads/new
  def new
    @upload = Upload.new
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  # POST /uploads.json
  def create
    @upload = Upload.new(upload_params)

    respond_to do |format|
      if @upload.save
        format.html { redirect_to @upload, notice: 'Upload was successfully created.' }
        format.json { render action: 'show', status: :created, location: @upload }
      else
        format.html { render action: 'new' }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uploads/1
  # PATCH/PUT /uploads/1.json
  def update
    respond_to do |format|
      if @upload.update(upload_params)
        format.html { redirect_to @upload, notice: 'Upload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload.destroy
    respond_to do |format|
      format.html { redirect_to uploads_url }
      format.json { head :no_content }
    end
  end

  def orders
    file_content = params[:purchases_file].read
    lines = file_content.split("\n") # split uploaded file into an array
    lines.shift # remove header line

    field_names = [:purchaser_name, :item_description, :item_price, :purchase_count, :merchant_address, :merchant_name]
    @gross_revenue = 0

    ActiveRecord::Base.transaction do
      upload = Upload.create!(filename: params[:purchases_file].original_filename, content: file_content)

      lines.each do |line_string|
        fields = line_string.split("\t") # split lines by tab delimiter into an array
        line = Hash[field_names.zip(fields)] # create a hash of field name => value

        purchaser = Purchaser.find_or_create_by!(
            name: line[:purchaser_name])
        merchant = Merchant.find_or_create_by!(
            name: line[:merchant_name],
            address: line[:merchant_address])
        item = Item.create!(
            description: line[:item_description],
            price: line[:item_price])

        merchant.items << item

        order = Order.create!(
            quantity: line[:purchase_count])

        upload.orders << order
        purchaser.orders << order
        item.orders << order

        @gross_revenue += order.quantity * item.price
      end
    end
  rescue => e
    respond_to do |format|
      format.html {
        flash[:error] = e.message
        redirect_to({:controller => 'orders', action: 'upload'}, notice: "Upload file error:")
      }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_upload
    @upload = Upload.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def upload_params
    params.require(:upload).permit(:filename, :content)
  end
end
