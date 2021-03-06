class CreateMentees < ActiveRecord::Migration[5.1]
  def change
    create_table :mentees do |t|
      t.string :email
      t.string :name
      t.datetime :date_created
      t.string :job_title
      t.string :expertise
      t.text :notes

      t.timestamps
    end
  end
end
