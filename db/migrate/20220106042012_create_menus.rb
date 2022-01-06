class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :description
      t.references :kitchencar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
