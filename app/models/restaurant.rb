class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :owner, class_name: 'User'
  has_many :users, through: :reservations

  def remain_seat(date)
    capcity - reservations.where(restaurant_id: id,
    date: date.strftime("%Y-%m-%d")).sum(:party_size)
  end

  def remain_seat_search(date)
    capcity - reservations.where(restaurant_id: id,
    date: date).sum(:party_size)
  end
end
