class AddActiveToParents < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :active, :boolean, default: true
  end
end
