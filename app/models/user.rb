class User < ActiveRecord::Base
	
	attr_accessible :email, :name, :password, :password_confirmation
	has_secure_password 
	before_save {|user| user.mail = email.downcase}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :name, presence: true, length: {maximum: 40}
	validates :password, presence: true
	validates :password_confirmation, presence: true

	def name_longer_than_eight
		User.find(:all, :conditions => ["LENGTH(name) < ?", 7])
		User.find_by_sql("SELECT * FROM users WHERE LENGTH(users.name) < 7")
	end
	
end
