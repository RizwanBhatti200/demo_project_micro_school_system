class Parent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # after_create :send_email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  # validates  :email, uniqueness: true, presence: true

  # def send_email
  #   ParentMailer.delay.thank_you(self)

  # end
end
