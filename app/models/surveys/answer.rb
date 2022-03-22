class Surveys::Answer < ApplicationRecord
  belongs_to :question#, class_name: 'Surveys::Question'
  belongs_to :submission#, class_name: 'Surveys::Submission'
end
