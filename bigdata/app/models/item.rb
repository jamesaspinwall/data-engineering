class Item < ActiveRecord::Base
  has_one :merchant
  has_many :orders
  validates_presence_of :description
  validates_uniqueness_of :description
  validates_presence_of :price
  validates_associated :merchant
  #validate
end
