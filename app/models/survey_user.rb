# module Surveys
  class SurveyUser < ApplicationRecord
    has_many :submissions#, class_name: 'Survey::Submission'
  end
# end
