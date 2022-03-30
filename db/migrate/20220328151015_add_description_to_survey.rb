class AddDescriptionToSurvey < ActiveRecord::Migration[7.0]
  def change
    add_column :surveys, :description, :text
  end
end
