class Pod < ApplicationRecord

    belongs_to :parent

    has_many :students

    has_many :reviews , as: :reviewable
    
    belongs_to :teacher, optional: true
    
    has_one :image, as: :imageable, dependent: :destroy

    has_one :join_request
    
    accepts_nested_attributes_for :image
    
    paginates_per 3

    scope :active, -> { where(active: true) }
    scope :inactive, -> { where(active: false) }
end
