class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.integer :employee_no 
      t.string :full_names
      t.string :role 
      t.string :id_number 
      t.integer :salary
    end
  end
end
