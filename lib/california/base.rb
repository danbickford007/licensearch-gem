require 'california'
require "net/http"
require "uri"
require 'request'


include Request

include California

class California::Base

  TOKEN = ENV['TOKEN']

  def self.auth
    [TOKEN, request('/api/auth', {token: TOKEN})['secret']]
  end  

end
