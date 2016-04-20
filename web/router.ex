defmodule Phsand2.Router do
  use Phsand2.Web, :router

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

  scope "/", Phsand2 do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/hello", PageController, :hello
    resources "/notes", NoteController, except: [:new, :edit]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Phsand2 do
  #   pipe_through :api
  # end
end
