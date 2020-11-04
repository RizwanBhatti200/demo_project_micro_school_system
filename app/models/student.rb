class Student < ApplicationRecord
  belongs_to :parent
  belongs_to :pod, optional: true
  enum gender: { male: 0, female: 1, no_gender: 3 }
end
