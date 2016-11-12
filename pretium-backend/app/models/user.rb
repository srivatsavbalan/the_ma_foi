class User < ApplicationRecord
  def self.ROLES 
    return [
      "ADMIN",
      "TEACHER",
      "STUDENT",
      "EMPLOYER"
    ]
  end
end
