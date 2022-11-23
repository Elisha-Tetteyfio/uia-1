class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.integer :pregnancies
      t.integer :glucose
      t.integer :blood_pressure
      t.integer :skin_thickness
      t.integer :insulin
      t.decimal :bmi
      t.integer :dpf
      t.integer :age
      t.boolean :outcome

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
