class MemberSerializer
  include JSONAPI::Serializer
  attributes :name, :biography, :contact_email, :class_name, :lattes, :linkedin, :photo_url

  belongs_to :admin
end
