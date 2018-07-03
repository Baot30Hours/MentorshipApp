json.extract! connection, :id, :date_created, :status, :mentee_id, :mentor_id, :created_at, :updated_at
json.url connection_url(connection, format: :json)
