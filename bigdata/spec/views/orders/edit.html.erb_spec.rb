require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :upload_id => 1,
      :purchaser_id => 1,
      :item_id => 1,
      :quantity => 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do
      assert_select "input#order_upload_id[name=?]", "order[upload_id]"
      assert_select "input#order_purchaser_id[name=?]", "order[purchaser_id]"
      assert_select "input#order_item_id[name=?]", "order[item_id]"
      assert_select "input#order_quantity[name=?]", "order[quantity]"
    end
  end
end
