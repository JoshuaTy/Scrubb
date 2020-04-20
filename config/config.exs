# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :scrubb,
  namespace: Scrub,
  ecto_repos: [Scrub.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :scrubb, ScrubWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xev08kW6Sfsuek/wbsKu58Cv2/58IIbGxGBqmK2YWyHudJkb5IcwMB7ZWohd7T8u",
  render_errors: [view: ScrubWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Scrub.PubSub,
  live_view: [signing_salt: "Adq7gfaV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
