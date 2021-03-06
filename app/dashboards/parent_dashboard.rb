require "administrate/base_dashboard"

class ParentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    students: Field::HasMany,
    pods: Field::HasMany,
    # image: Field::HasOne,
    id: Field::Number,
    email: Field::String,
    # encrypted_password: Field::String,
    # reset_password_token: Field::String,
    # reset_password_sent_at: Field::DateTime,
    # remember_created_at: Field::DateTime,
    # confirmation_token: Field::String,
    # confirmed_at: Field::DateTime,
    # confirmation_sent_at: Field::DateTime,
    # unconfirmed_email: Field::String,
    # created_at: Field::DateTime,
    # updated_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    address: Field::String,
    active: Field::Boolean,
    admin: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  students
  pods
  id
  email
  active
  admin
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  students
  pods
  id
  email
  first_name
  last_name
  address
  active
  admin
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  students
  pods
  email
  first_name
  last_name
  address
  active
  admin
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how parents are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(parent)
  #   "Parent ##{parent.id}"
  # end
end
