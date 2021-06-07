import Config

secret_key_base = System.fetch_env!("SECRET_KEY_BASE")
db_host = System.fetch_env!("PGHOST")
db_instance = System.fetch_env!("PGDATABASE")
db_user = System.fetch_env!("PGUSER")
db_password = System.fetch_env!("PGPASSWORD")

config :blog, BlogWeb.Endpoint,
  http: [:inet6, port: String.to_integer("4000")],
  secret_key_base: secret_key_base

# Database config
config :blog, Blog.Repo,
  hostname: db_host,
  username: db_user,
  password: db_password,
  database: db_instance,
  pool_size: 15
