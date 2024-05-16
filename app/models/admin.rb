class Admin < ApplicationRecord

  validates :username, presence: true
  validates :email, presence: true 
  validates :encrypted_password, presence: true 
  
  # Include default devise modules. Others available are:
  # :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :confirmable
end
