class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :topic
      t.text :message
      t.boolean :terms

      t.timestamps
    end
  end
end
