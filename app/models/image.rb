class Image < ApplicationRecord

  belongs_to :imageable, polymorphic: true

  has_attached_file :avatar
  

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
