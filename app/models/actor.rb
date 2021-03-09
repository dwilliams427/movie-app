class Actor < ApplicationRecord
  belongs_to :movie #returns hash of one single movie
  # validates :first_name, length: { minimum: 2 }
  # validates :last_name, length: { minimum: 2 }
  # validates :known_for, presence: true
  # validates :age, numericality: { minimum: 13 }
end
