class Service < ApplicationRecord
  has_many :bookings
  belongs_to :user
  belongs_to :category
end
