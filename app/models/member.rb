class Member < ApplicationRecord
  belongs_to :admin
  has_one_attached :photo

  validates :name, presence: true, length: { maximum: 100 }
  validates :biography, presence: true 
  validates :contact_email, presence: true 
  validates :class_name, presence: true 
  validates :lattes, presence: true 
  validates :linkedin, presence: true 
  validate :photo_presence

  def photo_url
    Rails.application.routes.url_helpers.url_for(photo) if photo.attached?
  end

  private 

    def photo_presence
      errors.add(:photo, "can't be blank") unless photo.attached?
    end
end
