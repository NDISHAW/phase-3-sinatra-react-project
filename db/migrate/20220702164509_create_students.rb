class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :Full_names
      t.integer :admision_number
      t.datetime :date_of_birth
      t.integer :parent_id
      t.string :level
      t.timestamp :time
      t.timestamp :updated_at
    end
  end
end
