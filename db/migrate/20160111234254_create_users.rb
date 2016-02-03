class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :mail
      t.text :content
      t.datetime :posted_at

      t.timestamps
    end
  end
end
