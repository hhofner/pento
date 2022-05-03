defmodule Pento.Repo.Migrations.AddUsernameField do
  use Ecto.Migration

  def change do
    alter(:users) do
      add :username, :string, null: false
    end
  end
end
