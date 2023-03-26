defmodule Backend.PostsTest do
  use Backend.DataCase

  import Backend.Factory

  alias Backend.Posts

  test "list_posts/0 returns all posts" do
    post =
      insert!(:post,
        title: "App signal implementation",
        summary: "App signal implementation summary",
        content: "App signal implementation content",
        read_duration: 5
      )

    assert [post] == Posts.list_posts()

    assert post.title == "App signal implementation"
    assert post.summary == "App signal implementation summary"
    assert post.content == "App signal implementation content"
    assert post.read_duration == 5
  end

  test "get_post/1 returns the post with given id" do
    post =
      insert!(:post,
        title: "Concurrency in Elixir",
        summary: "Concurrency implementation summary",
        content: "Concurrency implementation content",
        read_duration: 15
      )

    post = %Posts.Post{} = Posts.get_post(post.id)

    assert post.title == "Concurrency in Elixir"
    assert post.summary == "Concurrency implementation summary"
    assert post.content == "Concurrency implementation content"
    assert post.read_duration == 15
  end

  test "get_post/1 returns nil if post does not exist" do
    assert nil == Posts.get_post(123)
  end
end
