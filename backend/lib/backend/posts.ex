defmodule Backend.Posts do
  @moduledoc """
  The Posts context.
  """

  alias Backend.Posts.Post
  alias Backend.Repo

  @doc """
  Returns the list of posts.
  """
  @spec list_posts :: list()
  def list_posts do
    Repo.all(Post)
  end
end
