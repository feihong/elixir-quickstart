defmodule QuickstartWeb.PageController do
  use QuickstartWeb, :controller

  def index(conn, params) do
    # By default, show 3 hanzi
    # Todo: better error handling
    count = Map.get(params, "count", "3")
            |> Integer.parse
            |> elem(0)
    render conn, "index.html", count: count
  end
end
