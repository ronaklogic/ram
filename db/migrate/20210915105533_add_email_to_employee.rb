class AddEmailToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :email, :string
  end
end
