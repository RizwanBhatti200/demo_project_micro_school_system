require "administrate/field/base"

class MultipleSelectFieldField < Administrate::Field::Base
  def to_s
    data
  end

  def self.permitted_attribute(attribute)
    { attribute.to_sym => [] }
  end

  def permitted_attribute
    self.class.permitted_attribute(attribute)
  end
end
