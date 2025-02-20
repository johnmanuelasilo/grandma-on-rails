class User < ApplicationRecord
  has_many :grandmas
  has_many :bookings
end
