defmodule BadSelect.Repo do
  use Ecto.Repo,
    otp_app: :bad_select,
    adapter: Ecto.Adapters.Postgres
end
