defmodule PaasWeb.PageController do
  use PaasWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
