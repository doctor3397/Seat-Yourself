class AddRatingsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :ratings, :integer
  end
end
