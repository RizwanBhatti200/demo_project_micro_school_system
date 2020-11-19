class Student < ApplicationRecord
  belongs_to :parent
  belongs_to :pod, optional: true
  has_one :image, as: :imageable, dependent: :destroy

  has_one :join_request

  accepts_nested_attributes_for :image

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  validates :grade, presence: true, inclusion: { in: GRADE, message: "%{value} is not a valid please add one grade at time" }
  validates :age, presence: true,inclusion: { in: [*1..15], message: "%{value} is not a valid please add under 15 years " }

  enum gender: { male: 0, female: 1 }
end