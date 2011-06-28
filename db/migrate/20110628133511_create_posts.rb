class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :category
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
