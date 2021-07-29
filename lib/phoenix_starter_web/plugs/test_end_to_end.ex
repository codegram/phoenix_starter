defmodule PhoenixStarterWeb.Plug.TestEndToEnd do
  use Plug.Router

  plug :match
  plug :dispatch

  post "/db/checkin" do
    PhoenixStarterUtils.DatabaseCleaner.delete_data(are_you_sure: :yes)
    send_resp(conn, 200, "ok")
  end

  post "/db/factory" do
    # When piped through a generic Phoenix JSON API pipeline, using a route
    # like this allows you to call your factory via your test API easily.
    with {:ok, schema} <- Map.fetch(conn.body_params, "schema"),
         {:ok, attrs} <- Map.fetch(conn.body_params, "attributes") do
      db_schema = String.to_atom(schema)
      db_attrs = Enum.map(attrs, fn {k, v} -> {String.to_atom(k), v} end)
      db_entry = PhoenixStarterUtils.Factory.insert(db_schema, db_attrs)
      send_resp(conn, 200, Jason.encode!(Map.take(db_entry, [:id, :activity_id])))
    else
      _ -> send_resp(conn, 401, "schema or attributes missing")
    end
  end

  match(_, do: send_resp(conn, 404, "not found"))
end
