class AddParentIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :parent_id, :integer
  end
end
