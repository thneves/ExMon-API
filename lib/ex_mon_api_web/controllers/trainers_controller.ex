defmodule ExMonApiWeb.TrainersController do
  use ExMonApiWeb, :controller

  def create(conn, params) do #receives action params, call create_trainer and handle the response
    params
    |> ExMonApi.create_trainer()
    |> handle_response(conn)
  end

  defp handle_response({:ok, trainer}, conn) do
    conn
    |> put_status(:ok)
    |> render("create.json", trainer: trainer)
  end
end
