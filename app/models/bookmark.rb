class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true
  validates :comment, length: { minimum: 6, message: "doit avoir au moins 6 caractères" }
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :list_id, uniqueness: { scope: :movie_id }

end
