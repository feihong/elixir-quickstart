# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :quickstart, QuickstartWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rYQKoSinhfE+Q+YbQ9usyMKHGQvssp1m7ASfp7HR7k0tAW7Kln5h6uUP01+d09Cx",
  render_errors: [view: QuickstartWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Quickstart.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
