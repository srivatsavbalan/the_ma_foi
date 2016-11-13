class User < ApplicationRecord
  has_many :saved_searches
  def self.ROLES 
    return [
      "ADMIN",
      "TEACHER",
      "STUDENT",
      "EMPLOYER"
    ]
  end
end
