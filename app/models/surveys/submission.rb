class Surveys::Submission < ApplicationRecord
  belongs_to :survey_user#, class_name: 'Surveys::SurveyUser'
  belongs_to :user#, class_name: 'Surveys::SurveyUser'
  has_many :answers#, class_name: 'Survey::Answer'
end
