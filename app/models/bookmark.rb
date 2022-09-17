class Bookmark < ApplicationRecord
  validates :movie, presence: true
  validates :list, presence: true
end
