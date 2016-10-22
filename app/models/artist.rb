class Artist < ApplicationRecord
# RELATIONSHIPS
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy
# VALIDATIONS
  validates :name, presence: true

# FILTERING SYSTEM

scope :order_by_name,        -> { order(:name) }
scope :order_by_date,        -> { order(:created_at) }

end
