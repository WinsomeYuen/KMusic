class Genre < ActiveRecord::Base
	has_many :groups
end
