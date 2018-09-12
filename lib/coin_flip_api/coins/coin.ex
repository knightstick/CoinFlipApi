defmodule CoinFlipApi.Coins.Coin do
  alias __MODULE__

  defstruct value: nil

  @callback flip() :: %Coin{}

  @values ["heads", "tails"]
  def flip(), do: %Coin{value: Enum.random(@values)}
end
