class Pictable < ActiveRecord::Base
	attr_accessible :title :artist

	validates :title, presence: true

end