defmodule Inmana.Repo.Migrations.CreateRestaurantsTable do
  use Ecto.Migration

  def change do
    create table(:restaurants) do
      add :email, :string
      add :name, :string

      # inserted at, updated at
      timestamps()
    end
    # def id unico para os emails
    create unique_index(:restaurants, [:email])
  end
end
