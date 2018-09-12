defmodule CoinFlipApiWeb.Graphql.CoinTest do
  use CoinFlipApiWeb.ConnCase

  import Mox

  setup :verify_on_exit!

  setup do
    seed_heads()
    :ok
  end

  def seed_heads() do
    CoinFlipApi.CoinMock
    |> expect(:flip, fn -> %CoinFlipApi.Coins.Coin{value: "heads"} end)
  end

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
