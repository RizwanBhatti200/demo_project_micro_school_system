class Pod < ApplicationRecord
    belongs_to :parent
    has_many :students
    belongs_to :teacher
end
