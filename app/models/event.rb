class Event < ApplicationRecord
  belongs_to :admin
  has_one_attached :cover_photo
end
