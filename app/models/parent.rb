class Parent < ApplicationRecord
  has_many :students
  has_many :pods
  has_many :reviews
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  # validates :address, presence: true 


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # after_create :send_email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  # validates  :email, uniqueness: true, presence: true


  def display_join(pod_id)
    flag = false
    self.students.each do |student|
      if student.join_request&.pod_id != pod_id && student.pod_id != pod_id
        flag = true
      end
    end
    flag
  end
end
