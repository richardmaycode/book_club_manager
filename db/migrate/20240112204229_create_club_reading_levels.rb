class CreateClubReadingLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :club_reading_levels do |t|
      t.belongs_to :club, null: false, foreign_key: true
      t.belongs_to :reading_level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
