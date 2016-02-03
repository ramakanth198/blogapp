class CreateEat24signins < ActiveRecord::Migration
  def change
    create_table :eat24signins do |t|
      t.string :firstname
      t.string :lastname
      t.string :emailid
      t.string :emailidconformation
      t.string :password

      t.timestamps
    end
  end
end
