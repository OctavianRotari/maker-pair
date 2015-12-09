class AddProfileIdToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :profile, index: true, foreign_key: true
  end
end
