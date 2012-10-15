class Student < ActiveRecord::Base
  validates :First_Name, :presence => true
  validates :Last_Name, :presence => true
  validates :Email, :presence => true
  validates :Admission_Year, :presence => true
  validates :password, :presence => true, :length => {:minimum => 5}
end
