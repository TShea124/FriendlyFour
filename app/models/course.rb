class Course < ActiveRecord::Base

def self.search(query)
	where("city like ?", "%#{query}%")
	where("name like ?", "%#{query}%")
end


end
