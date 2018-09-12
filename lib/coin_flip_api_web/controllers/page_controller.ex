defmodule CoinFlipApiWeb.PageController do
  use CoinFlipApiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
