use Mix.Config

# Configure your database
config :bad_select, BadSelect.Repo,
  username: "postgres",
  password: "postgres",
  database: "bad_select_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bad_select, BadSelectWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
