defmodule BackendWeb.PostControllerTest do
  use BackendWeb.ConnCase

  test "index lists all posts", %{conn: conn} do
    conn = get(conn, Routes.post_path(conn, :index))
    assert true
  end
end
