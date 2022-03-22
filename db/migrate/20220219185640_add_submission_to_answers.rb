class AddSubmissionToAnswers < ActiveRecord::Migration[7.0]
  def change
  	add_reference :answers, :submission, index: true
  end
end
