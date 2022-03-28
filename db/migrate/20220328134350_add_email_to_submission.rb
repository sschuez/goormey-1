class AddEmailToSubmission < ActiveRecord::Migration[7.0]
  def change
    add_column :submissions, :email, :string
  end
end
