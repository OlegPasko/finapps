class FriendlyUrl < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.string :cached_slug
    end
    change_table :users do |t|
      t.string :cached_slug
    end
  end
end
