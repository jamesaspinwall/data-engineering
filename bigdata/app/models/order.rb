class Order < ActiveRecord::Base
  belongs_to :upload
  belongs_to :item
  validates_presence_of :quantity
  validates_numericality_of :quantity
end
