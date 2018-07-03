class Event < ApplicationRecord
  belongs_to :connection
  enum event_type: [:meeting, :discussion, :note]
  enum meeting_method: [:video_chat, :face_to_face, :phone_call]
end
