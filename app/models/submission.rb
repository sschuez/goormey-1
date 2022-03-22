# module Surveys
  class Submission < ApplicationRecord
    belongs_to :survey, dependent: :destroy
    belongs_to :survey_user, dependent: :destroy#, class_name: 'Surveys::SurveyUser'
    has_many :answers, dependent: :destroy#, class_name: 'Survey::Answer'
  end
# end