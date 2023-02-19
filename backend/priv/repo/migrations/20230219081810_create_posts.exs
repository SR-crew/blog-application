defmodule Backend.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :string
      add :summary, :string
      add :read_duration, :integer

      timestamps()
    end
  end
end
