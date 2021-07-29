defmodule PhoenixStarter.DatabaseSeeder do
  def delete_data do
    PhoenixStarterUtils.delete_data(are_you_sure: :yes)
  end

  def run do
    delete_data
    seed_users()
  end

  def seed_users() do
    nil
  end
end

if System.get_env("HEROKU_BRANCH") !== "master" do
  {:ok, _} = Application.ensure_all_started(:ranch)
  PhoenixStarter.DatabaseSeeder.run()
end
