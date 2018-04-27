class AddTimeToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :time, :time
  end
end
