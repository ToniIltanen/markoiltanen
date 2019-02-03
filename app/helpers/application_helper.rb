module ApplicationHelper
  def get_twitter_feed
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "QZGL1A6o1Tu0dG4THqjj0TDQh"
      config.consumer_secret     = "rzdXPpfWjouMzxSOE5CIKaTSoViVBqcSgci8qAo3E4AcFP4CAr"
      config.access_token        = "1247262847-2jAYkmJGxcKuiAdkx13whqgIMlk8wf4lgf8ovQr"
      config.access_token_secret = "IEV0MroVpYFTLHsbPVcUIQWvgFiT5kbQoicFpZ5TkDWdk"
    end
    @tweets = client.user_timeline("Marko_80").take(2)
    @events_footer = Event.where('date >= ?', DateTime.now).order(date: :asc, time: :asc).take(2)
  end

  def get_encounters
    @encounters = Encounter.all
    @locations = Location.all
  end
end
