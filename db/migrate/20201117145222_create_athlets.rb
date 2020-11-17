class CreateAthlets < ActiveRecord::Migration[5.2]
  def change
    create_table :athlets do |t|
      t.string :name
      t.integer :result

      t.timestamps
    end
  end
end
