class AddActiveToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :active, :boolean, default: false
  end
end
