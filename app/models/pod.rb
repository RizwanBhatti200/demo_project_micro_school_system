class Pod < ApplicationRecord
    before_create :assign_teacher

    belongs_to :parent
    has_many :students
    belongs_to :teacher, optional: true
    has_one :image, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :image

    paginates_per 3

    def assign_teacher
        self.teacher = Teacher.all.sample if self.teacher.blank?
    end

end
