class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.integer :tel
      t.string :url

      t.timestamps null: false
    end
  end
end
