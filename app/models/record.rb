class Record < ActiveRecord::Base
	include Filterable
	validates :title, :artist, :description, presence: true
	validates :year, presence: true, length: { minimum: 1, maximum: 4}, numericality: { less_than: 2020, greater_than: 0 }
  scope :title, -> (title) { where title: title }
  scope :year, -> (year) { where year: year }
  scope :artist, -> (artist) { where artist: artist }
end
