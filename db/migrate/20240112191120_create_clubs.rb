class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :name, null: false, limit: 90
      t.text :description, null: true
      t.date :founded, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
    add_index :clubs, :name, unique: true
  end
end
