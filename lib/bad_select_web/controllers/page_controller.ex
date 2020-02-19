defmodule BadSelectWeb.PageController do
  use BadSelectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
