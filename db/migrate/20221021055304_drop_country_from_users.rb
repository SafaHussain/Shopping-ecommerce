class DropCountryFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :Country
  end
end
