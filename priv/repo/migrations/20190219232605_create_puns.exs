defmodule Paas.Repo.Migrations.CreatePuns do
  use Ecto.Migration

  def change do
    create table(:puns) do
      add :body, :string

      timestamps()
    end

  end
end
