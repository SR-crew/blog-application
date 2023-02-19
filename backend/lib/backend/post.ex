defmodule Backend.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :content, :string
    field :read_duration, :integer
    field :summary, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :summary, :read_duration])
    |> validate_required([:title, :content])
  end
end
