defmodule Scrub.Accounts.Customers do
  @moduledoc """
    Customer has user_id as and has_penalty fields
  """

  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "customers" do
    field :has_penalty, :boolean, default: false
    field :user_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(customers, attrs) do
    customers
    |> cast(attrs, [:has_penalty])
    |> validate_required([:has_penalty])
  end
end
