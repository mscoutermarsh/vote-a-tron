module RateLimited
  extend ActiveSupport::Concern

  included do
    validates :rate_limit, message: "Sorry, it looks like you've already voted!"
  end


  private
  def rate_limit_key
    key = "#{params['poll_id']}:request.ip_address:request"
  end
  def rate_limit
    self.dropbox_key = SignalId::Token.unique(24) do |key|
      self.class.find_by_dropbox_key(key)
    end
  end
end
