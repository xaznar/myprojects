class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
def list(posts)
  posts.each do |post|
    p "#{post.id} - Votes:#{post.votes} - #{post.title} - #{post.url}"
  end
end


def ask_for(input)
  p "What is the #{input} for the post?"
  gets.chomp
end



end
