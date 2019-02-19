defmodule Paas.Content.Pun do
  use Ecto.Schema
  import Ecto.Changeset


  schema "puns" do
    field :body, :string

    timestamps()
  end

  @doc false
  def changeset(pun, attrs) do
    pun
    |> cast(attrs, [:body])
    |> validate_required([:body])
  end
end
