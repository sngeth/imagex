defmodule Imagex.ImgurResult do
  import Imagex.Imgur, only: [make_request: 2]

  @imgur_api Application.get_env(:imagex, :imgur_mock_api)

  def get(query) when is_binary(query) do
    @imgur_api.make_request(:get, "/3/gallery/search?q=#{query}")
  end
end
