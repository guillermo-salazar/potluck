class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.decimal :serving
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :dishes, [:user_id, :created_at]
  end
end
