class AddSurveyToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_reference :submissions, :survey, null: false, foreign_key: true
  end
end
