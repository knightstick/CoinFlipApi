defmodule CoinFlipApi.Coins.CoinTest do
  use ExUnit.Case, async: true

  alias CoinFlipApi.Coins.Coin

  test "it flips a coin" do
    %Coin{value: coin_value} = Coin.flip()

    assert coin_value in ["heads", "tails"]
  end
end
