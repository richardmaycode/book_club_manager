class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, limit: 30
      t.text :description, null: false, limit: 150

      t.timestamps
    end
    add_index :categories, :name, unique: true
  end
end
