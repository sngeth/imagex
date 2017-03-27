defmodule Imagex.PageController do
  use Imagex.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
