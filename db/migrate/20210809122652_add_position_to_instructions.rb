class AddPositionToInstructions < ActiveRecord::Migration[6.1]
  def change
    add_column :instructions, :position, :integer
  end
end
