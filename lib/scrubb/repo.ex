defmodule Scrub.Repo do
  use Ecto.Repo,
    otp_app: :scrubb,
    adapter: Ecto.Adapters.Postgres
end
