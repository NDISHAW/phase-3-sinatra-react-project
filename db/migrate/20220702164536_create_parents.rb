class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.string :fathers_full_names
      t.integer :fathers_contacts
      t.integer :fathers_email
      t.integer :fathers_id_no
      t.string :mothers_full_names
      t.integer :mothers_contacts
      t.integer :mothers_email
      t.integer :mothers_id_no
      t.string :address
      t.string :nationality
      t.integer :admision_number
    end
  end
end
