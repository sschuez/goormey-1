class RemoveColumnsFromContact < ActiveRecord::Migration[6.1]
  def change
    remove_column :contacts, :name, :string
    remove_column :contacts, :topic, :string
    remove_column :contacts, :terms, :string
  end
end
