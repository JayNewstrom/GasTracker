class Price < ActiveRecord::Base
  belongs_to :grade

  attr_accessible :cost, :latitude, :longitude, :grade_id

  validates :cost, :grade, :latitude, :longitude, presence: true
end
