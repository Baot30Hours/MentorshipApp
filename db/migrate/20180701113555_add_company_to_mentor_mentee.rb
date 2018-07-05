class AddCompanyToMentorMentee < ActiveRecord::Migration[5.1]
  def change
    add_column :mentors, :company, :string
    add_column :mentees, :company, :string
  end
end
