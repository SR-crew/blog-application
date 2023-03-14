defmodule Backend.Factory do
  @moduledoc """
  A factory for creating test data.
  """

  alias Backend.Posts.Post
  alias Backend.Repo

  # Factories

  def build(:post) do
    %Post{
      title: "hello world",
      summary: "hello world summary",
      content: "hello world content",
      read_duration: 5
    }
  end

  # Convenience API

  def build(factory_name, attributes) do
    factory_name |> build() |> struct!(attributes)
  end

  def insert!(factory_name, attributes \\ []) do
    factory_name |> build(attributes) |> Repo.insert!()
  end
end
