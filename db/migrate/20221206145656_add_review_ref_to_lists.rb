class AddReviewRefToLists < ActiveRecord::Migration[7.0]
  def change
    add_reference :lists, :review, null: false, foreign_key: true
  end
end
