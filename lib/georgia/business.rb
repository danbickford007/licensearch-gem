
class Georgia::Business < Georgia::Base

  def self.count
    token, secret = auth
    request('/api/georgia/business/count', {token: token, secret: secret})['count']
  end

  def self.query params
    token, secret = auth
    request('/api/georgia/business/query', {token: token, secret: secret}.merge(params))['results']
  end

end

