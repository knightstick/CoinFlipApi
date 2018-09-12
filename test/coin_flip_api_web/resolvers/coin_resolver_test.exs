defmodule CoinFlipApiWeb.Resolvers.CoinResolverTest do
  use ExUnit.Case

  alias CoinFlipApiWeb.Resolvers

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

  test "gets a coin" do
    {:ok, %{value: coin_value}} = Resolvers.Coin.flip_a_coin(nil, nil, nil)

    assert coin_value == "heads"
  end
end
