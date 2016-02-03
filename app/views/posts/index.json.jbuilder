json.array!(@posts) do |post|
  json.extract! post, :id, :contenttype, :lenght, :posted_from
  json.url post_url(post, format: :json)
end
