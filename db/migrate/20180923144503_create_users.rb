class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.integer :age
      t.float :height
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
