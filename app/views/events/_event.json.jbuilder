json.extract! event, :id, :timestamp, :event_date, :event_type, :meeting_method, :notes, :connection_id, :created_at, :updated_at
json.url event_url(event, format: :json)
