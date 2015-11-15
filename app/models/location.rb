class Location < ActiveRecord::Base

  minimum_latitude = -90
  maximum_latitude = 90
  minimum_longitude = -180
  maximum_longitude = 180

  validates :name, presence: true, length: { minimum: 6 }
  validates :description, presence: true, length: { minimum: 6 }
  validates :address, presence: true, length: { minimum: 6 }
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates_numericality_of :latitude, greater_than: minimum_latitude
  validates_numericality_of :latitude, less_than: maximum_latitude
  validates_numericality_of :longitude, greater_than: minimum_longitude
  validates_numericality_of :longitude, less_than: maximum_longitude
end
