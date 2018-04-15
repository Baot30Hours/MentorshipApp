class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.references :Mentee, foreign_key: true
      t.references :Mentor, foreign_key: true

      t.timestamps
    end
  end
end
