class Animal < ApplicationRecord
    # validates :common_name, :latin_name, :kingdom, presence: true
    # validates :common_name, :latin_name, :kingdom, length: { minimum: 2 }
    # validates :common_name, :latin_name, :kingdom, uniqueness: false
    has_many :sightings
end
