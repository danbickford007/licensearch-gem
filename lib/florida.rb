module Florida

  def request endpoint, params
    uri = URI.parse("http://licensearch.com#{endpoint}")
    uri.query = URI.encode_www_form(params)
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.request(Net::HTTP::Get.new(uri.request_uri))
    JSON.parse response.body
  end

end
