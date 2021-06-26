defmodule WabanexWeb.IMCControllerTest do
  use WabanexWeb.ConnCase, async: true

  describe "index/2" do
    test "when all params are valid, returns the imc info", %{conn: conn} do
      params = %{"filename" => "students.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:ok)

      assert response == %{
               "result" => %{
                 "Dani" => 23.437499999999996,
                 "Diego" => 23.04002019946976,
                 "Gabul" => 22.857142857142858,
                 "Rafael" => 24.897060231734173,
                 "Rodrigo" => 26.234567901234566
               }
             }
    end
  end
end
