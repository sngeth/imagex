use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :imagex, Imagex.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :imagex, Imagex.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "imagex_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

import_config "prod.secret.exs"

config :imagex, :imgur_mock_api, Imagex.ImgurMockApi
