class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.string :description_short
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
