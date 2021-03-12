class Movie < ApplicationRecord
  has_many :actors #returns array of many actors
  has_many :movie_genre
  has_many :genres, through: :movie_genre

  # validates :title, presence: true
  # validates :year, numericality: { maximum: 2021 }
  # validates :year, numericality: true
  # validates :plot, presence: true
  # validates :director, presence: true
end
