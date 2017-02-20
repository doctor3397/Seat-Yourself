class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :owner, class_name: 'User'
  has_many :users, through: :reservations
  has_many :reviews

  def remain_seat(date, res_time)
    capcity - reservations.where(
    restaurant_id: id,
    date: date.strftime("%Y-%m-%d"),
    res_time: res_time).sum(:party_size)
  end

  def remain_seat_search(date, res_time)
    capcity - reservations.where(restaurant_id: id,
    date: date,
    res_time: res_time).sum(:party_size)
  end

  validates :name, :city, :cuisine, :capcity, presence: true
  validates :name, uniqueness: true
end
