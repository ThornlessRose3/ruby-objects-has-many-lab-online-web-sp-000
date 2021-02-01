class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(some_post)
    some_post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
    new_post.author = self
  end
  
<<<<<<< HEAD
  def self.post_count
    Post.all.count
=======
  def post_count
    count = Post.all
    count.length
>>>>>>> 5b86f6bc0b1b94d465834725ad5214475834b055
  end
  
end