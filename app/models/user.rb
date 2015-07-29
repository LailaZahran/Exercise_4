class User < ActiveRecord::Base
	has_secure_password
	attr_accessible :email, :name, :password, :password_confirmation 
	before_save {|user| user.mail = email.downcase}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[\w+\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :name, presence: true, length: {maximum: 40}
	validates :password, presence: true
	validates :password_confirmation, presence: true
	


end
