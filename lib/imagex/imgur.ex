defmodule Imagex.Imgur do
  use HTTPoison.Base

  def headers do
    %{
      "Content-type" => "application/json",
      "Authorization" => "#{Application.get_env(:imagex, :imgur_client_id)}"
    }
  end

  def make_request(:get, url) do
    get(url, headers())
  end

  def process_url(path), do: "https://api.imgur.com" <> path

  def process_response_body(body) do
    body |> Poison.decode!
  end
end
