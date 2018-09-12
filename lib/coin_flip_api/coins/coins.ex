defmodule CoinFlipApi.Coins do
  alias CoinFlipApi.Coins.Coin

  def flip_a_coin() do
    coin = Application.get_env(:coin_flip_api, :coin, Coin)

    coin.flip()
  end
end
