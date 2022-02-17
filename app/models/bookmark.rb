class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, presence: true, uniqueness: true
  validates :list_id, presence: true, uniqueness: true
  validates :comment, length: { minimum: 6 }
end
