class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :course
      t.integer :price_of_course
      t.string :currency
      t.datetime :date
      t.text :description_of_course
      t.text :teachers

      t.timestamps
    end
  end
end
