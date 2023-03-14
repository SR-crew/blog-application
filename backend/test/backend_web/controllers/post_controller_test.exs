defmodule BackendWeb.PostControllerTest do
  use BackendWeb.ConnCase

  import Backend.Factory

  test "index lists all posts", %{conn: conn} do
    _post_1 = insert!(:post)
    _post_2 = insert!(:post)
    _post_3 = insert!(:post)

    conn = get(conn, Routes.post_path(conn, :index))
    response = json_response(conn, 200)

    assert length(response["data"]) == 3
  end
end
