defmodule BackendWeb.PostController do
  use BackendWeb, :controller

  alias Backend.Posts

  def index(conn, _params) do
    posts = Posts.list_posts()

    json(conn, %{
      data:
        for(
          post <- posts,
          do: %{
            id: post.id,
            title: post.title,
            summary: post.summary,
            content: post.content,
            read_duration: post.read_duration
          }
        )
    })
  end
end
