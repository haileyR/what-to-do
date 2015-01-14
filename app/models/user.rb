class User < ActiveRecord::Base
  has_secure_password
  has_many :tasks
  validates_presence_of :username, message: "can't be blank"
  validates_presence_of :password, message: "can't be blank"
  validates :username, uniqueness: {
    message: "has already been taken"
  }
end
