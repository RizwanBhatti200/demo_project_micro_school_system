class Student < ApplicationRecord
  belongs_to :parent
  enum gender: { male: 0, female: 1}
end
