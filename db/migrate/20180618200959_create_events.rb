class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.datetime :timestamp
      t.datetime :event_date
      t.integer :event_type
      t.integer :meeting_method
      t.text :notes
      t.references :connection, foreign_key: true

      t.timestamps
    end
  end
end
