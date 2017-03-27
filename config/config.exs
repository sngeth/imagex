# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :imagex,
  ecto_repos: [Imagex.Repo]

# Configures the endpoint
config :imagex, Imagex.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HLFqGNtv4zS8nCX6vSjKXsmFPQ933uwygMecgX3IhjRMB3NZO5hKqg01YKUKdbLr",
  render_errors: [view: Imagex.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Imagex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
