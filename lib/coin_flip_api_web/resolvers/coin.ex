defmodule CoinFlipApiWeb.Resolvers.Coin do
  def flip_a_coin(_, _, _) do
    {:ok, %{value: "heads"}}
  end
end
