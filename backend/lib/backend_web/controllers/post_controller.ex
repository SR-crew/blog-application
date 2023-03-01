defmodule BackendWeb.PostController do
  use BackendWeb, :controller

  alias Backend.Posts

  def index(conn, _params) do
    # posts = Posts.list_posts() || []
    # Jason.encode!(posts)
    send_resp(conn, 200, "some posts")
  end
end
