defmodule Backend.Posts do
  @moduledoc """
  The Posts context.
  """

  alias Backend.Repo
  alias Backend.Posts.Post

  @doc """
  Returns the list of posts.
  """
  @spec list_posts :: list()
  def list_posts do
    Repo.all(Post)
  end
end
