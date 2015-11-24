
class Florida::Business < Florida::Base

  def self.count
    token, secret = auth
    request('/api/florida/business/count', {token: token, secret: secret})['count']
  end

  def self.query params
    token, secret = auth
    request('/api/florida/business/query', {token: token, secret: secret}.merge(params))['results']
  end

end

