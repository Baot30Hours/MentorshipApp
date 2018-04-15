class CreateMentors < ActiveRecord::Migration[5.1]
  def change
    create_table :mentors do |t|
      t.string :email
      t.string :name
      t.datetime :date_created
      t.string :job_title
      t.string :string
      t.string :expertise
      t.integer :mentee_slots

      t.timestamps
    end
  end
end
