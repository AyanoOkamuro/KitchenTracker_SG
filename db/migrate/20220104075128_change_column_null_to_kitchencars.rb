class ChangeColumnNullToKitchencars < ActiveRecord::Migration[6.1]
  def change
    change_column_null :kitchencars, :name,false
    change_column_null :kitchencars, :introduction,false
    change_column_null :kitchencars, :location,false
  end
end
