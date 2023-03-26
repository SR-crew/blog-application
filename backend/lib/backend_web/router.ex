defmodule BackendWeb.Router do
  use BackendWeb, :router

  alias PostController

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BackendWeb do
    pipe_through :api

    resources "/posts", PostController, only: [:index]
    # get "/posts", PostController, :index
  end
end
