module ApplicationHelper
  def get_twitter_feed
    client = Rails.application.config.twitter
    @tweets = client.user_timeline("Marko_80").take(2)
  end
end
