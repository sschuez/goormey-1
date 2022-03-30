class Survey < ApplicationRecord
  has_many :submissions, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_rich_text :description
end
