require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :upload_id => 1,
      :purchaser_id => 1,
      :item_id => 1,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do
      assert_select "input#order_upload_id[name=?]", "order[upload_id]"
      assert_select "input#order_purchaser_id[name=?]", "order[purchaser_id]"
      assert_select "input#order_item_id[name=?]", "order[item_id]"
      assert_select "input#order_quantity[name=?]", "order[quantity]"
    end
  end
end
