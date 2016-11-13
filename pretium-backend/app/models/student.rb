class Student < ApplicationRecord
  has_many :ratings
  after_create :create_user

  def create_user
    User.create(username: self.name, password: "1234", email: self.email)
  end
end
