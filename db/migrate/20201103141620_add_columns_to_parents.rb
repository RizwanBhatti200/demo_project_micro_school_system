class AddColumnsToParents < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :first_name, :string
    add_column :parents, :last_name, :string
    add_column :parents, :address, :string

  end
end
