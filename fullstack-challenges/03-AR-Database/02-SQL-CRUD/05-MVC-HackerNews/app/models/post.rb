class Post
  # TODO: Gather all code from all previous exercises
  # - reader and accessors
  # - initialize
  attr_accessor :url, :title
  attr_reader :votes, :id

  def initialize(attr = {})
    @title = attr[:title]
    @url = attr[:url]
    @votes = attr[:votes]
    @id =  attr[:id]
  end


  # - self.find
  def self.find(id)
    # 1. Make SQl query to select 1 post based on its ID
    results = DB.execute("SELECT * FROM posts WHERE id = ?", id).flatten
    # P the results
    # Your result will be array of array - make it one array
    p results
  # with the result make a post instance post.New
  # [1, "Hello world", "https://www.lewagon.com", 10000]

  return nil if results.empty?
    post = Post.new(id: results[0], title: results[1], url: results[2], votes: results[3])
  end

  # - self.all
  def self.all
    # 1 make SQL query to seelect all posts
    results = DB.execute("SELECT * FROM posts")
    # p results
    p results
    # iterate over array of arrays
    results.each do |x|
      puts x
    end
    # for each array, make a post instance
    post = Post.new(id: results[0], title: results[1], url: results[2], votes: results[3])
    # return array of instances
    p post
    # return nil if results.empty?
  end


  # - save

  def save
    if @id
      update = DB.execute("UPDATE posts SET title = ?, url = ?, votes = ? WHERE id = ?", @title, @url, @votes, @id)
    else
      create = DB.execute("INSERT INTO posts (title, url, votes) VALUES (?, ?, ?)", @title, @url, @votes)
      @id = DB.last_insert_row_id
    end
  end


  # - destroy

  def destroy
    # TODO: destroy the current instance from the database
    results = DB.execute("DELETE FROM posts WHERE id = ?", id).flatten
    # P the results
    # Your result will be array of array - make it one array
    p results
  end
end
