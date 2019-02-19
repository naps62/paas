defmodule PaasWeb.PunController do
  use PaasWeb, :controller

  alias Paas.Content

  action_fallback PaasWeb.FallbackController

  def show(conn, _params) do
    pun = Content.random_pun()
    render(conn, "show.json", pun: pun)
  end
end
