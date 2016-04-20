ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Phsand2.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Phsand2.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Phsand2.Repo)

