class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.belongs_to :parent
      t.belongs_to :pod
      t.string :first_name
      t.string :last_name
      t.string :grade, :limit => 3
      t.integer :age
      t.integer :gender

      t.timestamps
    end
  end
end
