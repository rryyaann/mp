class Cleaning < ActiveRecord::Base

	validates :date, :time, presence: true
end
