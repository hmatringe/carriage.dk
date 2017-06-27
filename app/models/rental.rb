class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :pick_up_date, presence: true
  validates :return_date, presence: true

  monetize :amount_Øres
end
