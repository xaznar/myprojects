class Post
  attr_accessor :url, :title
  attr_reader :votes, :id

  def initialize(attr = {})
    @title = attr[:title]
    @url = attr[:url]
    @votes = attr[:votes]
    @id =  attr[:id]
  end

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

  def self.all
    # 1 make SQL query to seelect all posts
    results = DB.execute("SELECT * FROM posts")
    # p results
    p results
    # iterate over array of arrays
    results.map do |result|
      Post.new(id: result[0], title: result[1], url: result[2], votes: result[3])
    end
    # for each array, make a post instance

    # return array of instances

    # return nil if results.empty?
  end
end
