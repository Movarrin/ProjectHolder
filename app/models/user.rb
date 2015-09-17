class User < ActiveRecord::Base
	 has_secure_password

	#getter method. makes available anywhere in the class
	attr_accessor :password
	attr_protected :password_digest

	# validates :name, :presence => true
	validates :username, :presence => true
	validates :email, :presence => true, :uniqueness => true, :email => true
	validates :password, :presence => true, :confirmation => true
	validates :password_confirmation, :presence => {:if => :password}

	def password=(pass)
		# this is what hashes the password.
		return if pass.blank?
		@password = pass
		self.password_digest = BCrypt::Password.create(pass)

	end

end
