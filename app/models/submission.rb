# module Surveys
  class Submission < ApplicationRecord
    belongs_to :survey_user#, class_name: 'Surveys::SurveyUser'
    has_many :answers#, class_name: 'Survey::Answer'
  end
# end