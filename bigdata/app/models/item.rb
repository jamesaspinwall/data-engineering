class Item < ActiveRecord::Base
  has_one :merchant
  has_many :orders
  validates_presence_of :description
  validates_presence_of :price
  #validates_presence_of :merchant_id
end
