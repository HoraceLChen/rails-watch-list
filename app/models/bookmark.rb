class Bookmark < ApplicationRecord
  belongs_to :movie
  # , class_name: 'Movie', foreign_key: 'movies_id'
  belongs_to :list
  # , class_name: 'List', foreign_key: 'lists_id'
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end
