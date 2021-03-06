defmodule PaasWeb.Router do
  use PaasWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PaasWeb do
    pipe_through :api

    get "/", PunController, :show
  end
end
