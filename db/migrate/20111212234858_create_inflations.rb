class CreateInflations < ActiveRecord::Migration
  def change
    create_table :inflations do |t|
      t.integer :year
      t.integer :rate

      t.timestamps
    end
  end
end
