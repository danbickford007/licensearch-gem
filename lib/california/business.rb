
class California::Business < California::Base

  def self.count
    token, secret = auth
    request('/api/california/business/count', {token: token, secret: secret})['count']
  end

  def self.query params
    token, secret = auth
    request('/api/california/business/query', {token: token, secret: secret}.merge(params))['results']
  end

end

