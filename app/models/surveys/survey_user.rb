class Surveys::SurveyUser < ApplicationRecord
  has_many :submissions#, class_name: 'Survey::Submission'
end
