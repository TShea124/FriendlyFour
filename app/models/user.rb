class User < ActiveRecord::Base
	belongs_to :teetime
	has_many :reservations
	has_secure_password
end
