class CreateUserModel < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |u|
      u.string :username
      u.string :email
      u.timestamps null: false
    end
  end
end
