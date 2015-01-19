class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :about
      t.text :body
      t.belongs_to :person, index: true

      t.timestamps null: false
    end
    add_foreign_key :messages, :people
  end
end
