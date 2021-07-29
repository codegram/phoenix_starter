defmodule PhoenixStarterUtils.DatabaseCleaner do
  alias PhoenixStarter.Repo

  def delete_data(are_you_sure: :yes) do
    {:ok, modules} = :application.get_key(:phoenix_starter, :modules)

    modules
    |> Enum.filter(&({:__schema__, 1} in &1.__info__(:functions)))
    |> Enum.filter(& &1.__schema__(:source))
    |> Enum.each(&Repo.delete_all(&1))
  end
end
