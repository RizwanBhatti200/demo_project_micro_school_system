class AddActiveToPods < ActiveRecord::Migration[5.2]
  def change
    add_column :pods, :active, :boolean, :default => false
    #Ex:- :default =>''
  end
end
