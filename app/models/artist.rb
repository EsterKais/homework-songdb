class Artist < ApplicationRecord
# RELATIONSHIPS
  has_many :songs, dependent: :destroy

# VALIDATIONS
  validates :name, presence: true

end
