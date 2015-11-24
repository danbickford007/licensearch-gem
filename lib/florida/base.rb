require 'florida'
require "net/http"
require "uri"

include Florida

class Florida::Base

  TOKEN = ENV['TOKEN']

  def self.auth
    [TOKEN, request('/api/auth', {token: TOKEN})['secret']]
  end  


  private

  def secret

  end


end
