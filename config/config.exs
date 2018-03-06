# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :jelly_shot, JellyShot.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9iGMbCvTq9bL9JqACLqA9mUdnCOKU3/AdCkgUFsqe3PMZL0zWVvMnFLkP4JGsKAI",
  render_errors: [view: JellyShot.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JellyShot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
