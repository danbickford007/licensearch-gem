
class Florida::Business < Florida::Base

  def self.count
    token, secret = auth
    request('/api/florida/business/count', {token: token, secret: secret})['count']
  end

end

