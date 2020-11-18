class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.string :grade, array: true, default: []

      t.timestamps
    end
  end
end
