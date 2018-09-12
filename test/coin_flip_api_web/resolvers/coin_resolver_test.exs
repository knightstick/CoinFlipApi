defmodule CoinFlipApiWeb.Resolvers.CoinResolverTest do
  use ExUnit.Case

  alias CoinFlipApiWeb.Resolvers

  test "gets a coin" do
    {:ok, %{value: coin_value}} = Resolvers.Coin.flip_a_coin(nil, nil, nil)

    assert coin_value in ["heads", "tails"]
  end
end
