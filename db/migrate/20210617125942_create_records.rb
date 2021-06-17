class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.date :record_at
      t.float :body_temperature
      t.boolean :is_cough
      t.boolean :is_sneeze
      t.boolean :is_runny_nose
      t.boolean :is_dull
      t.boolean :is_family_illness
      t.text :attendance
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
