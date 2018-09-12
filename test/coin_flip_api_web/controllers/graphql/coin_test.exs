defmodule CoinFlipApiWeb.Graphql.CoinTest do
  use CoinFlipApiWeb.ConnCase

  @query """
  {
    coin {
      value
    }
  }
  """
  test "coin returns a coin", %{conn: conn} do
    conn = get conn, "/api", query: @query

    assert %{
      "data" => %{
        "coin" => %{ "value" => coin_value }
      }
    } = json_response(conn, 200)

    assert coin_value in ["heads", "tails"]
  end
end
