defmodule ExMonApiWeb.WelcomeController do
  use ExMonApiWeb, :controller


  def index(conn, _params) do ## all actions gets to parameters
    text(conn, "Welcome to ExMon Api")
  end

end
