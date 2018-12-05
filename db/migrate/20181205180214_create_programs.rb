class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :facility_id
      t.integer :shelter_id

      t.timestamps
    end
  end
end
