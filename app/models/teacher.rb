class Teacher < ApplicationRecord
    has_many :pods
    has_many :reviews , as: :reviewable
    GRADE = ['k1', 'k2', 1, 2, 3, 4, 5, 6, 7, 8].freeze
    enum gender: { Male: 0, Female: 1 }
    validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
    validates :grade, presence: true, inclusion: { in: %w(k1 k2 1 2 3 4 5 6 7 8), message: "%{value} is not a valid please add one grade at time" }
    # validates :gender, presence: true, inclusion: { in: %w(Male Female),message: "%{value} is not a valid" }
end
