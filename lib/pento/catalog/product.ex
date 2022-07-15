defmodule Pento.Catalog.Product do
  # `use` injects code into current module
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :description, :string
    field :name, :string
    field :sku, :integer
    field :unit_price, :float

    # adds created_at and updated_at fields
    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    # filters out the fields we need
    # AND actually casts the values
    |> cast(attrs, [:name, :description, :unit_price, :sku])
    |> validate_required([:name, :description, :unit_price, :sku])
    |> unique_constraint(:sku)
    |> validate_number(:unit_price, greater_than: 0)
  end

  @doc false
  def increased_unit_price_changeset(product, attrs) do
    product
    |> changeset(attrs)
    |> validate_number(:unit_price, greater_than: product.unit_price)
  end
end
