class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  GRADE = %w(k1 k2 1 2 3 4 5 6 7 8)
end
