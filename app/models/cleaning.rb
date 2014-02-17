class Cleaning < ActiveRecord::Base

	validates :date, :time, presence: true

	belongs_to :user
end
