class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.date :hire_date
      t.integer :job_id
      t.integer :salary

      t.timestamps
    end
  end
end
