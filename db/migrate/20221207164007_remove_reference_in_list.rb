class RemoveReferenceInList < ActiveRecord::Migration[7.0]
  def change
    remove_reference :lists, :review
  end
end
