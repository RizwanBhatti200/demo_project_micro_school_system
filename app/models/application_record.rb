class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  GRADE = %w(K1 K2 1 2 3 4 5 6 7 8)
end
