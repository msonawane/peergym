use Mix.Config

config :peergym, Peergym.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "peergym.com", port: 80],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Do not print debug messages in production
config :logger, level: :info

config :comeonin, bcrypt_log_rounds: 14

# Configure your database
config :peergym, Peergym.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "18") # The amount of database connections in the pool
