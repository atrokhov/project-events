class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :sex
      t.boolean :admin, default: false
      t.boolean :moderator, default: false

      t.timestamps
    end
  end
end
