class AddColmnNameAndImgUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :img_url, :string
  end
end
