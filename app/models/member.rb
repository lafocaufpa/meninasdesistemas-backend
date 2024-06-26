class Member < ApplicationRecord
  belongs_to :admin
  has_one_attached :photo
end
