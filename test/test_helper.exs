ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(CoinFlipApi.Repo, :manual)

Mox.defmock(CoinFlipApi.CoinMock, for: CoinFlipApi.Coins.Coin)
