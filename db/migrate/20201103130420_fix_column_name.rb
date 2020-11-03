class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :pods, :teacher_name, :pod_name
  end
end
