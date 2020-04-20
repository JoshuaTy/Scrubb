defmodule Scrub.Repo.Migrations.AddUniqueIndexToUsersTable do
  use Ecto.Migration

  def change do
    create unique_index(:users, [:phone_number])
  end
end
