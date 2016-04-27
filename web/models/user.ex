defmodule Phsand2.User do
  use Phsand2.Web, :model

  schema "users" do
    field :name, :string

    timestamps
  end

  @required_fields ~w(name)a
  @optional_fields ~w()a

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
