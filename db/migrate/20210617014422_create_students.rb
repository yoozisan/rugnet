class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.text :student_name
      t.integer :category, null: false, default: 1
      t.integer :school_year, null: false, default: 1
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
