defmodule Scrub.Accounts.User do
  @moduledoc """
  User has phone_number, nick_name, and is_active fields
  and it belongs to a Customer
  """

  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :is_active, :boolean, default: false
    field :nick_name, :string
    field :phone_number, :integer

    belongs_to :customer, Scrubb.Accounts.Customer
    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:phone_number, :nick_name, :is_active])
    |> validate_required([:phone_number, :nick_name, :is_active])
    |> unique_constraint(:phone_number)
  end
end
