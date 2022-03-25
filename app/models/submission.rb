# module Surveys
  class Submission < ApplicationRecord
    belongs_to :survey
    belongs_to :survey_user
    has_many :answers, dependent: :destroy
  end
# end