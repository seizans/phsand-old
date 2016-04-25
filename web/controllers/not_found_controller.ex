defmodule Phsand2.NotFoundController do
  use Phsand2.Web, :controller

  alias Phsand2.NotFound

  def index(conn, _params) do
    IO.inspect conn
    IO.inspect _params
    json conn, %{error_message: "not_found"}
  end
end
