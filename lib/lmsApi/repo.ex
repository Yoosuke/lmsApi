defmodule LmsApi.Repo do
  use Ecto.Repo,
    otp_app: :lmsApi,
    adapter: Ecto.Adapters.Postgres
end
