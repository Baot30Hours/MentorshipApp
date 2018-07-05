class RemoveCreatedDateFromConnections < ActiveRecord::Migration[5.1]
  def change
    remove_column :connections, :date_created, :connections
  end
end
