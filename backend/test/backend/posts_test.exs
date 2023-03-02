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
end
