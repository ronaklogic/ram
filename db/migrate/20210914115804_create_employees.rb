class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :hobby
      t.string :city
      t.text :address
      t.integer :mobile_no

      t.timestamps
    end
  end
end
