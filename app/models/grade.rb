class Grade < ActiveRecord::Base

  has_many :prices

  attr_accessible :name
end
