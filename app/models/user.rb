class User < ActiveRecord::Base
  validate :name
  validate :username
  validate :password
  validate :password_confirmation
  validate :email

  has_secure_password

end
