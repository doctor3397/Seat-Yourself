class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :res_time, :date, :party_size, :restaurant_id, :user_id, presence: true
end
