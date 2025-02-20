class Review < ApplicationRecord
  belongs_to :booking, optional: true
  belongs_to :grandma

  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
