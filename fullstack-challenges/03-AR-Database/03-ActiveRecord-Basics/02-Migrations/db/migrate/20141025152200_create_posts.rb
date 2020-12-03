class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :created_at
      t.string :updated_at
    end

    # TODO: your code here to create the posts table
  end
end
