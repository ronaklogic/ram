class AddUsernameToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :username, :string
  end
end
