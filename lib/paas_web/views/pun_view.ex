defmodule PaasWeb.PunView do
  use PaasWeb, :view
  alias PaasWeb.PunView

  def render("show.json", %{pun: pun}) do
    %{data: render_one(pun, PunView, "pun.json")}
  end

  def render("pun.json", %{pun: pun}) do
    %{id: pun.id, body: pun.body}
  end
end
