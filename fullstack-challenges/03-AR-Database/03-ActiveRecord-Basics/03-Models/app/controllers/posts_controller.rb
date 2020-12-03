require_relative "../views/posts_view"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    posts = Post.all
    @view.list(posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    title = @view.ask_for("title")
    url = @view.ask_for("url")

  Post.create(title: title, url: url, votes: 0)
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    id = @view.ask_for("id")
    title = @view.ask_for("title")
    url = @view.ask_for("url")
    post = Post.find(id)

    post.update(title: title, url: url)
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post


    id = @view.ask_for("id")
    post = Post.find(id)
    post.destroy
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    Post.increment_counter
  end
end
