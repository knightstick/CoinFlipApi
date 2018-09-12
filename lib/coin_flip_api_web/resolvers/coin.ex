defmodule CoinFlipApiWeb.Resolvers.Coin do
  alias CoinFlipApi.Coins

  def flip_a_coin(_, _, _) do
    coin = Coins.flip_a_coin()

    {:ok, coin}
  end
end
