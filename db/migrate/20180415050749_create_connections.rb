class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.belongs_to :Mentee, index: true
      t.belongs_to :Mentor, index: true
      t.timestamps
    end
  end
end
