defmodule DummyAppWeb.PageController do
  use DummyAppWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.

    IO.inspect("here!")
    IO.inspect Application.get_env(:dummy_app, :test_value)
    render(conn, :home, layout: false)
  end
end
