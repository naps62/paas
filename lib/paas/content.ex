defmodule Paas.Content do
  alias Paas.Repo
  alias Paas.Content.Pun

  def random_pun do
    # TODO: change this because we are grabbing the whole table
    Pun
    |> Repo.all()
    |> case do
      [] -> [%Pun{body: "uh-oh no pun is available"}]
      puns -> puns
    end
    |> Enum.random()
  end
end
