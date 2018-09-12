# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coin_flip_api,
  ecto_repos: [CoinFlipApi.Repo]

# Configures the endpoint
config :coin_flip_api, CoinFlipApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Wk2HmJCnWpC2jjIVraCjBUq1Al2gB8ZsAFPLGbc1Bkpvpr2WOat4hpz0xkDZhaT+",
  render_errors: [view: CoinFlipApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CoinFlipApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
