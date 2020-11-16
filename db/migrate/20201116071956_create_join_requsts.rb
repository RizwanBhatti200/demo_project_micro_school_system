class CreateJoinRequsts < ActiveRecord::Migration[5.2]
  def change
    create_table :join_requsts do |t|
      t.boolean :approval, default: false
      t.integer :pod_id
      t.integer :student_id
      t.index  [:pod_id, :student_id], unique: true
  
      t.timestamps
    end
  end
end
