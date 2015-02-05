class Reply < ActiveRecord::Base
	belongs_to :comment
	belongs_to :replier, class_name: 'User'
	
end
