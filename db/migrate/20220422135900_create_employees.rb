class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :tel
      t.string :address
      t.string :email
      t.string :employee_number

      t.timestamps
    end
  end
end
