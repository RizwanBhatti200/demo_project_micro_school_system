class Student < ApplicationRecord
  belongs_to :parent
  belongs_to :pod, optional: true
  has_one :image, as: :imageable, dependent: :destroy

  has_one :join_requst

  accepts_nested_attributes_for :image

  enum gender: { male: 0, female: 1, no_gender: 3 }
end
