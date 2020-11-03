class Student < ApplicationRecord
  belongs_to :parent
  belongs_to :pod
  enum gender: { male: 0, female: 1}
end
