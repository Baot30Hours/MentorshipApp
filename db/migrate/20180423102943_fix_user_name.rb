class FixUserName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :title, :userName
  end
end
