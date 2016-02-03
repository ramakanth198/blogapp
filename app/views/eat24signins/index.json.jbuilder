json.array!(@eat24signins) do |eat24signin|
  json.extract! eat24signin, :id, :firstname, :lastname, :emailid, :emailidconformation, :password
  json.url eat24signin_url(eat24signin, format: :json)
end
