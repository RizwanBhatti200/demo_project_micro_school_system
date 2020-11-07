class Teacher < ApplicationRecord
    has_many :pods

    GRADE = ['k1', 'k2', 1, 2, 3, 4, 5, 6, 7, 8].freeze
end
