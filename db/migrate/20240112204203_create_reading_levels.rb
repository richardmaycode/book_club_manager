class CreateReadingLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :reading_levels do |t|
      t.string :name, limit: 30

      t.timestamps
    end
    add_index :reading_levels, :name, unique: true
  end
end
