defmodule Phsand2.PageController do
  use Phsand2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def hello(conn, _params) do
    render conn, "index.html"
  end
end
