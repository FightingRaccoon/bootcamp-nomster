class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :pictures
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true
  validates :address, presence: true  
  validates :description, presence: true
  
  mount_uploader :photo, PhotoUploader

end
