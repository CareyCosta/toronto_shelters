class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.date :record_date
      t.integer :program_id
      t.integer :occupancy
      t.integer :capacity

      t.timestamps
    end
  end
end
