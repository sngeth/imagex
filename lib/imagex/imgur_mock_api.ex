defmodule Imagex.ImgurMockApi do
  def make_request(:get, "/3/gallery/search?q=lolcats") do
    {:ok, %{
        body:
        %{"data" => [%{"account_id" => 315911, "account_url" => "znarko",
            "comment_count" => 2, "cover" => "r79uy6K",
            "cover_height" => 624, "cover_width" => 1024,
            "datetime" => 1485988106, "description" => nil, "downs" => 4,
            "favorite" => false, "id" => "CFjqu", "images_count" => 2,
            "in_gallery" => true, "is_ad" => false, "is_album" => true,
            "layout" => "blog", "link" => "http://imgur.com/a/CFjqu",
            "nsfw" => false, "points" => 8, "privacy" => "public",
            "score" => 8, "section" => "",
            "tags" => [%{"display_name" => "The More You Know",
                "followers" => 73, "name" => "the_more_you_know",
                "total_items" => 3858}],
            "title" => "What happened to lolcats?",
            "topic" => "The More You Know", "topic_id" => 11, "ups" => 12,
            "views" => 1068, "vote" => nil}]
        }
      }
    }
  end
end
