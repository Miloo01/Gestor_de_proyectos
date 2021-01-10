class Proyect < ApplicationRecord
    validates :name, :description, :state, presence: true
end
