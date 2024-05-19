class AdminSerializer
  include JSONAPI::Serializer
  attributes :username, :email, :created_at

  has_many :events 
  has_many :members 
end
