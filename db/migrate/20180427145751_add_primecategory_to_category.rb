class AddPrimecategoryToCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :primecategory, foreign_key: true
  end
end
