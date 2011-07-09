class AddScoreToUsers < ActiveRecord::Migration
  def change
      change_table :users do |t|
        t.integer :score, :default => 0
    end
  end
end
