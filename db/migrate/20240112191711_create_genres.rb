class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :name, null: false, limit: 30
      t.text :description, null: true
      t.boolean :active, null: false, default: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
    add_index :genres, :name, unique: true
  end
end
