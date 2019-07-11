class Sighting < ApplicationRecord
    # validates :date, :latitude, :longitude, presence: true
    # validates :date, :latitude, :longitude, length: { minimum: 2 }
    # validates :date, :latitude, :longitude, uniqueness: false
    
    belongs_to :animals
end
