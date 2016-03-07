Wordnik.configure do |config|
  config.api_key = 'a48c588135951fa0b952523f01f07265d611bcf3f63b8606b'               # required
  config.username = 'dilloncortez'                    # optional, but needed for user-related functions
  config.password = 'fr33runn3r'               # optional, but needed for user-related functions
  config.response_format = 'json'             # defaults to json, but xml is also supported
  config.logger = Logger.new('/dev/null')     # defaults to Rails.logger or Logger.new(STDOUT). Set to Logger.new('/dev/null') to disable logging.
end