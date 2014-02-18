class Cleaning < ActiveRecord::Base

	validates :month, :day, :hour, :minute, :ampm, presence: true

	belongs_to :user
end
