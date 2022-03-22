class Survey < ApplicationRecord
  has_many :submissions
  has_many :questions
end
