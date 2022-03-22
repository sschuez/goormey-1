class AddSurveyUserToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_reference :submissions, :survey_user, null: false, foreign_key: true
  end
end
