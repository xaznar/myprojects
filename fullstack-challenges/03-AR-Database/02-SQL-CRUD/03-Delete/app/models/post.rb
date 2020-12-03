class Post
  attr_reader :id
  attr_accessor :title, :url, :votes

  def initialize(attributes = {})
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes] || 0
    @title = attributes[:title]
  end

  def destroy
    # TODO: destroy the current instance from the database
    results = DB.execute("DELETE FROM posts WHERE id = ?", id).flatten
    # P the results
    # Your result will be array of array - make it one array
    p results
  end
end
