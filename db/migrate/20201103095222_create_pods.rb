class CreatePods < ActiveRecord::Migration[5.2]
  def change
    create_table :pods do |t|
      t.belongs_to :parent
      t.belongs_to :teacher
      t.string :zipcode
      t.string :teacher_name
      t.string :description

      t.timestamps
    end
  end
end
