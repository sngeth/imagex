defmodule Imagex.SearchControllerTest do
  use Imagex.ConnCase
  alias Imagex.ImgurResult

  # User Story: I can get the image URLs, alt text and page urls for a set of images relating to a given search string.
  test "retrieve an image search result", %{conn: conn} do
    assert {:ok, response} = ImgurResult.get("lolcats")
    assert %{"link" => _} = response.body
    assert %{"description" => _} = response.body
  end
end
