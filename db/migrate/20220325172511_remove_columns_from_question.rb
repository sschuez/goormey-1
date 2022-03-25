class RemoveColumnsFromQuestion < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :order, :string
    remove_column :questions, :title, :string
    remove_column :questions, :identifier, :string
    remove_column :questions, :input_hidden, :string
  end
end
