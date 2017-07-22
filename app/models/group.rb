class Group < ActiveRecord::Base
	belongs_to :genre
	validates_presence_of :name
end
