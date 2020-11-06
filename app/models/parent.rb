class Parent < ApplicationRecord
  has_many :students
  has_many :pods
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

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
