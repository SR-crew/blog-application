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

  @doc """
  Returns single post by id.
  """
  @spec get_post(integer()) :: %Post{} | nil
  def get_post(id) do
    Repo.get(Post, id)
  end
end
