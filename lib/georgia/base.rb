require 'georgia'
require "net/http"
require "uri"

include Georgia 

class Georgia::Base

  TOKEN = ENV['TOKEN']

  def self.auth
    [TOKEN, request('/api/auth', {token: TOKEN})['secret']]
  end  

end
