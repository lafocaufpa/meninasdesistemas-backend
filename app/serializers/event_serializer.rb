class EventSerializer
  include JSONAPI::Serializer
  attributes :data_occurence, :event_title, :lecturer, :event_description, :lenght_time, :event_type, :cover_photo_url
  
  belongs_to :admin
end
