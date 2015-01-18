class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.text :bio
      t.string :email
      t.string :phone
      t.integer :genre
      t.string :site
      t.date :birthday
      t.string :rg
      t.string :cpf
      t.integer :role

      t.timestamps null: false
    end
  end
end
