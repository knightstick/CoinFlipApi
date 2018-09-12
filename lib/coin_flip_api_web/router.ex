defmodule CoinFlipApiWeb.Router do
  use CoinFlipApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CoinFlipApiWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  forward "/api", Absinthe.Plug,
    schema: CoinFlipApiWeb.Schema

  forward "/graphiql",
    Absinthe.Plug.GraphiQL,
    schema: CoinFlipApiWeb.Schema,
    interface: :simple
end
