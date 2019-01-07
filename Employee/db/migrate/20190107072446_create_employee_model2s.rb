class CreateEmployeeModel2s < ActiveRecord::Migration
  def change
    create_table :employee_model2s do |t|
      t.string :name
      t.integer :age
      t.string :dept
      t.date :date

      t.timestamps null: false
    end
  end
end
