class CreateSchoolfee < ActiveRecord::Migration[6.1]
  def change
    create_table :schoolfees do |t|
      t.datetime :transaction_day
      t.integer :admision_number
      t.integer :ammount
    end
  end
end
