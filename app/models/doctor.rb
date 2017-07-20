class Doctor < ActiveRecord::Base
    has_many :bookings
  has_many :patients, through: :bookings
end
