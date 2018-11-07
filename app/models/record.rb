class Record < ApplicationRecord
	validates :title, :artist, :description, presence: true
	validates :year, presence: true, length: { minimum: 1, maximum: 4}, numericality: { less_than: 2020, greater_than: 0 }
end
