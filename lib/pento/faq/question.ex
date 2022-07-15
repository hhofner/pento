defmodule Pento.FAQ.Question do
  use Ecto.Schema
  import Ecto.Changeset

  schema "questions" do
    field :answer, :string
    field :title, :string
    field :upvotes, :integer

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:title, :answer, :upvotes])
    |> validate_required([:title, :answer, :upvotes])
  end
end
