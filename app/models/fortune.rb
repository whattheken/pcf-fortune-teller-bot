class Fortune < ApplicationRecord
  validates :text, presence: true
  validates :author, presence: true
end
