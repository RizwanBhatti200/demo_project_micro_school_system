class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :grade, :string, :limit => nil
  end
end
