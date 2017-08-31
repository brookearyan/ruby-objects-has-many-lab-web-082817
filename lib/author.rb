class Author
  attr_accessor :name

@@post_count = 0

def initialize(name)
  @posts = []
  @name = name
end

def posts
  @posts
end

def add_post(post)
  self.posts << post
  post.author = self
  @@post_count +=1
end

def add_post_by_title(title)
  post = Post.new(title)
  self.posts << post
  post.author = self
  @@post_count +=1
end

def self.post_count
  return @@post_count
end

end
