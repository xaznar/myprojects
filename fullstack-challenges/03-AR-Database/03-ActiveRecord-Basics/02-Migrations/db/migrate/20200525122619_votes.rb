class Votes < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :votes, :integer, default: 0
  end

  # TODO: your code here to create the posts table
end
