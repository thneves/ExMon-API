defmodule ExMonApiWeb.FallbackController do
   use ExMonApiWeb, :controller

   def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ExMonWeb.ErrorView)
    |> render("400.json", result)
   end
end
