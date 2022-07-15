defmodule Pento.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :title, :string
      add :answer, :string
      add :upvotes, :integer

      timestamps()
    end
  end
end
