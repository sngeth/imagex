defmodule Imagex.ImgurResult do
  import Imagex.Imgur, only: [make_request: 2]

  def get(query) when is_binary(query) do
    make_request(:get, "/3/gallery/search?q=#{query}")
  end
end
