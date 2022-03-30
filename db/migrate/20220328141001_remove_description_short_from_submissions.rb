class RemoveDescriptionShortFromSubmissions < ActiveRecord::Migration[7.0]
  def change
    remove_column :submissions, :description_short, :string
  end
end
