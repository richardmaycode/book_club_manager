class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.datetime :scheduled, null: false
      t.integer :duration, null: false, default: 60
      t.integer :venue, null: false, default: 0
      t.string :physical, null: true
      t.string :virtual, null: true

      t.belongs_to :club, null: false, foreign_key: true
      t.timestamps
    end
  end
end
