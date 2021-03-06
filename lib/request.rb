
module Request 

  def request endpoint, params
    @endpoint = endpoint; @params = params; @uri = get_uri
    set_params
    JSON.parse response.body
  end

  private

  def response
    http = Net::HTTP.new(@uri.host, @uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.request(Net::HTTP::Get.new(@uri.request_uri))
  end

  def get_uri
    URI.parse("https://licensearch.com#{@endpoint}")
  end

  def set_params
    @uri.query = URI.encode_www_form(@params)
  end

end
