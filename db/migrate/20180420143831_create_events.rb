class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :connection, foreign_key: true
      t.string :event_type
      t.string :method
      t.datetime :date
      t.text :notes

      t.timestamps
    end
  end
end
