# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bad_select,
  ecto_repos: [BadSelect.Repo]

# Configures the endpoint
config :bad_select, BadSelectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tUR/wucSBiEmdU5BsUhsXwIeEUykJtX3ORnj9jG6siHvep2IWHz7A3hBTv6Re+87",
  render_errors: [view: BadSelectWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BadSelect.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "0Lefd5x3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
