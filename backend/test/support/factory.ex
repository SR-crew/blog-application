defmodule Backend.Factory do
  alias Backend.Repo
  alias Backend.Posts.Post

  # Factories

  def build(:post) do
    %Post{title: "hello world"}
  end

  # Convenience API

  def build(factory_name, attributes) do
    factory_name |> build() |> struct!(attributes)
  end

  def insert!(factory_name, attributes \\ []) do
    factory_name |> build(attributes) |> Repo.insert!()
  end
end
