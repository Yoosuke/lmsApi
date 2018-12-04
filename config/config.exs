# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lmsApi,
  ecto_repos: [LmsApi.Repo]

# Configures the endpoint
config :lmsApi, LmsApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mry7tQltdh9srNqite9bgRBJTOiQnJhE+2OT0239v2yl0nhzcrm46kZl8g/cMjhy",
  render_errors: [view: LmsApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: LmsApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# Guardian config
config :lmsApi, LmsApi.Guardian,
       issuer: "lmsApi",
secret_key: "c/VYx/V5MnoKuktTFSVx1KcqiWCH32wIFyp174MTHcNdZCtBoN816Fozi/636gdh"
