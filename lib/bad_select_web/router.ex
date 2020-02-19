defmodule BadSelectWeb.Router do
  use BadSelectWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BadSelectWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/focus", Focus
  end

  # Other scopes may use custom stacks.
  # scope "/api", BadSelectWeb do
  #   pipe_through :api
  # end
end
