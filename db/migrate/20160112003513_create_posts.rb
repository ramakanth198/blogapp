class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :contenttype
      t.integer :lenght
      t.string :posted_from

      t.timestamps
    end
  end
end
