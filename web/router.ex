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
  end

  scope "/api/", Phsand2 do
    pipe_through :api

    resources "/notes", NoteController, except: [:new, :edit]
    # /api/dynamic* というパターンにマッチして、params = %{"path" => dynamic...} と入る
    get "/dynamic*path", NotFoundController, :index
  end
end
