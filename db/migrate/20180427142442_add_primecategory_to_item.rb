class AddPrimecategoryToItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :primecategory, foreign_key: true
  end
end
