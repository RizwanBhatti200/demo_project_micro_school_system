class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating 
      t.belongs_to :parent
      t.belongs_to :reviewable, polymorphic: true

      t.timestamps
    end
    add_index :reviews, [:reviewable_id, :reviewable_type]
  end
end
