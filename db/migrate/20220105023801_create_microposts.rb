class CreateMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :kitchencar, null: false, foreign_key: true

      t.timestamps
    end
    add_index :microposts, [:kitchencar_id, :created_at]
  end
end
