class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.date :joined, null: false
      t.integer :status, null: false, default: 0
      t.integer :role, null: false, default: 0

      t.belongs_to :club, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
