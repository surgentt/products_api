Skimlinks.configure do |config|
  config.api_key   = 'f153d5c5cb421b98f46e05d1284e1171'       # Your API key (get it here: https://accounts.skimlinks.com/productapi) (mandatory)
  config.cache     = Rails.cache    # Set to an instance of ActiveSupport::Cache::Store to cache the API requests. (optional, defaults to nil)
  config.format    = :json          # Currently no other setting is supported. In the future it will be possible to set this to :xml to communicate with the API via XML. (optional, defaults to :json)
  config.cache_ttl = 10.minutes     # Set to higher/lower value to cache requests shorter/longer. (optional, defaults to 1 day)
end