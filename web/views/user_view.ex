defmodule Phsand2.UserView do
  use Phsand2.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Phsand2.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Phsand2.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name}
  end
end
