json.extract! mentee, :id, :email, :name, :date_created, :job_title, :expertise, :notes, :created_at, :updated_at
json.url mentee_url(mentee, format: :json)
