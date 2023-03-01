defmodule Backend.PostsTest do
  use Backend.DataCase

  alias Backend.Posts

  test "list_posts/0 returns all posts" do
    assert [] == Posts.list_posts()
  end
end
