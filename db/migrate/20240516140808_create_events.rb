class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events, id: :uuid do |t|
      t.date :date_occurence, null: false 
      t.string :event_title, null: false, :limit => 100 
      t.string :lecturer, null: false
      t.text :event_description, null: false
      t.integer :length_time, null: false 
      t.integer :event_type, null: false
      t.references :admin, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
