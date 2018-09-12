defmodule CoinFlipApiWeb.Schema do
  use Absinthe.Schema

  alias CoinFlipApiWeb.Resolvers

  query do
    field :coin, :coin do
      resolve &Resolvers.Coin.flip_a_coin/3
    end
  end

  object :coin do
    field :value, :string
  end
end
