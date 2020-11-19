class Pod < ApplicationRecord

    belongs_to :parent

    has_many :students

    has_many :reviews , as: :reviewable
    
    belongs_to :teacher, optional: true
    
    has_one :image, as: :imageable, dependent: :destroy

    has_one :join_request
    
    accepts_nested_attributes_for :image
    
    paginates_per 3

    validates :zipcode, presence: true,
  format: { with: /[0-9]+/ },
  length: { minimum: 5 , maximum:5},
  uniqueness: true
  validates :pod_name, presence: true

    scope :active, -> { where(active: true) }
    scope :inactive, -> { where(active: false) }
end
