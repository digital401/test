class Instructor < ActiveRecord::Base
  validates :First_Name, :presence => true
  validates :Last_Name, :presence => true
  validates :Email, :presence => true
  validates :Password, :presence => true, :length => {:minimum => 5}
end
