class User < ActiveRecord::Base

 has_many :actions,foreign_key: :owner_id
	has_secure_password
	def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
