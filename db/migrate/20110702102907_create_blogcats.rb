class CreateBlogcats < ActiveRecord::Migration
  def change
    create_table :blogcats do |t|
      t.string :category

      t.timestamps
    end
  end
end
