defmodule CoinFlipApi.CoinsTest do
  use ExUnit.Case, async: true

  alias CoinFlipApi.Coins
  alias CoinFlipApi.Coins.Coin

  import Mox

  setup :verify_on_exit!

  describe "flip a coin" do
    test "can return a heads coin" do
      CoinFlipApi.CoinMock
      |> expect(:flip, fn -> %Coin{value: "heads"} end)

      assert Coins.flip_a_coin() == %Coin{value: "heads"}
    end
  end
end
