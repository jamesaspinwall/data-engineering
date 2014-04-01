class Item < ActiveRecord::Base
  belongs_to :merchant
  has_many :orders
  validates_presence_of :description
  validates_presence_of :price
  validates_associated :merchant
end
