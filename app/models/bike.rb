class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_attachments :photo
  validates :children_seating_capacity, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
