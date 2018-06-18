class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.datetime :date_created
      t.integer :status
      t.references :mentee, foreign_key: true
      t.references :mentor, foreign_key: true

      t.timestamps
    end
  end
end
