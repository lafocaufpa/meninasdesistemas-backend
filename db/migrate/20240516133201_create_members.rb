class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members, id: :uuid do |t|
      t.string :name, null: false, limit: 100
      t.text :biography, null: false
      t.string :contact_email, null: false
      t.string :class_name, null: false
      t.string :lattes, null: false
      t.string :linkedin, null: false
      t.references :admin, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
