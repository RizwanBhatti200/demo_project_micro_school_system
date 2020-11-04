class Pod < ApplicationRecord
    before_create :assign_teacher

    belongs_to :parent
    has_many :students
    belongs_to :teacher, optional: true
    def assign_teacher
        self.teacher = Teacher.all.sample if self.teacher.blank?
    end
    
end
