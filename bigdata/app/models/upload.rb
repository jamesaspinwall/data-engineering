class Upload < ActiveRecord::Base
  has_many :orders
  validates_presence_of :filename
  validates_presence_of :content
  #validates :name, :presence => {:message => 'Name cannot be blank, Task not saved'}
end
