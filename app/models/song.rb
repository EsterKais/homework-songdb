class Song < ApplicationRecord
# RELATIONSHIPS
  belongs_to :artist

# VALIDATIONS
  validates :name, presence: true

end
