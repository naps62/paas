defmodule Paas.Repo do
  use Ecto.Repo,
    otp_app: :paas,
    adapter: Ecto.Adapters.Postgres
end
