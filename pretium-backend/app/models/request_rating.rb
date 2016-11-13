class RequestRating < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :skill
end
