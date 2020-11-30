class Booking < ApplicationRecord
  before_create :set_total_price
  belongs_to :flat
  belongs_to :user
  validates :start_date, :end_date, :status, presence: true
  has_one :booking

  private

  def set_total_price
    self.total_price = (end_date - start_date).to_i * flat.price
  end
end
