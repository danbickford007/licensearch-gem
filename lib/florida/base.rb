require 'florida'
require "net/http"
require "uri"
require 'request'


include Request

include Florida

class Florida::Base

  TOKEN = ENV['TOKEN']

  def self.auth
    [TOKEN, request('/api/auth', {token: TOKEN})['secret']]
  end  

end
