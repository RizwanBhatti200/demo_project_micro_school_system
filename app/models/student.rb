class Student < ApplicationRecord
    enum gender: [ :male, :female ]
end
