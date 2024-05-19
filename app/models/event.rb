class Event < ApplicationRecord
  belongs_to :admin
  has_one_attached :cover_photo

  enum event_type: { event: 0, news: 1, workshop: 2 }

  validates :date_occurence, presence: true 
  validates :event_title, presence: true 
  validates :lecturer, presence: true 
  validates :event_description, presence: true 
  validates :lenght_time, presence: true 
  validates :event_type, presence: true 
  validate :cover_photo_presence

  def cover_photo_url
    Rails.application.routes.url_helpers.url_for(cover_photo) if cover_photo.attached?
  end

  private 

    def cover_photo_presence
      errors.add(:cover_photo, "can't be blank") unless cover_photo.attached?
    end
end
