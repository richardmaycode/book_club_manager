class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :meeting_preference, null: false, default: 0

      t.timestamps
    end
  end
end
