class AddPodIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :pod_id, :integer
  end
end
