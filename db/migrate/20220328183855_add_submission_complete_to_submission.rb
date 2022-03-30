class AddSubmissionCompleteToSubmission < ActiveRecord::Migration[7.0]
  def change
    add_column :submissions, :submission_complete, :boolean
  end
end
