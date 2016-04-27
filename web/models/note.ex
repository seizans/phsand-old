defmodule Phsand2.Note do
  use Phsand2.Web, :model

  schema "notes" do
    field :title, :string
    field :body, :string

    timestamps
  end

  @required_fields ~w(title body)a
  @optional_fields ~w()a

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
