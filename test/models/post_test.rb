require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "Post saves with all parameters" do
    post = Post.create(title: 'Post title', body: 'Test')
    assert post.valid?, 'The post was not valid when all parameters were supplied' 
    assert_equal 'Post title', post.title, 'Post title does not match'
  end

  test "Post doesn't save without all parameters" do
    post = Post.create(title: 'Post title')
    assert_not post.valid?, 'The post should not be valid when missing body'
  end
  
end
