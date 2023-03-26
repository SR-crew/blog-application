# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Backend.Repo.insert!(%Backend.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Backend.Repo
alias Backend.Posts.Post

Repo.insert!(%Post{
  title: "Hello world!",
  content: "This is a sample post content.",
  summary: "This is a sample post summary.",
  read_duration: 1
})

IO.puts("")
IO.puts("Success! Sample data has been added.")
