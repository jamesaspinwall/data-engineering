class Upload < ActiveRecord::Base
  has_many :orders
  validates_presence_of :filename
  validates_uniqueness_of :filename
  validates_presence_of :content
end
