class Patient < ActiveRecord::Base
    has_many :bookings
  has_many :doctors, through: :bookings
end
