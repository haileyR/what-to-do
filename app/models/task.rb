class Task < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :description, message: "can't be blank"
end
