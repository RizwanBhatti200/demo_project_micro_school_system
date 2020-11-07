class AddInactiveToPods < ActiveRecord::Migration[5.2]
  def change
    add_column :pods, :inactive, :boolean, default: false
  end
end
