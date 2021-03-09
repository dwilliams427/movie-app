class Movie < ApplicationRecord
  has_many :actors #returns array of many actors
  # validates :title, presence: true
  # validates :year, numericality: { maximum: 2021 }
  # validates :year, numericality: true
  # validates :plot, presence: true
  # validates :director, presence: true
end
