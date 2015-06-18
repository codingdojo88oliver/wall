class Post < ActiveRecord::Base
	# Relationship
	belongs_to :user
end
