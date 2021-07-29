defmodule PhoenixStarterUtils.Factory do
  @moduledoc """
  This module contains all the existing factories.
  """
  use ExMachina.Ecto, repo: PhoenixStarter.Repo

  def user_factory() do
    %{
      username: "my_username",
      email: "test@example.org"
    }
  end
end
