class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :page_count
      t.integer :publication_year

      t.belongs_to :membership, null: true, foreign_key: true
      t.belongs_to :meeting, null: false, foreign_key: true
      t.timestamps
    end
  end
end
