class AddRefReviewInLists < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :list, index: true
  end
end
