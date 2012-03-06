class Bookmark < ActiveRecord::Base
 attr_accessible :url, :name, :date_saved 
 #comment
    validates :url, :presence => true,
				:length => { :minimum => 10 }
	validates :name, :presence => true,
	            :length => { :maximum => 99 }
end
