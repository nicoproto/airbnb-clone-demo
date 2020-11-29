class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :user
  validates :start_date, :end_date, :status, :total_price, presence: true
end
