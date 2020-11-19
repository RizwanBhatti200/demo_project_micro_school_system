class Teacher < ApplicationRecord
    has_many :pods
    has_many :reviews , as: :reviewable
    GRADE = ['k1', 'k2', 1, 2, 3, 4, 5, 6, 7, 8].freeze
    enum gender: { Male: 0, Female: 1 }
    # validates :gender, presence: true, inclusion: { in: %w(Male Female),message: "%{value} is not a valid" }
end
