Rails.application.config.middleware.use OmniAuth::Builder do

  provider :github,
  ENV['4aee31ecd4ce5a703eea'],
  ENV['3b9b529b7dcf6247b8b5db7a360aba34450a1285'],
  scope: 'email',
  info_fields: 'email',
  auth_type: 'rerequest'

  #configure do |config|
  #    config.path_prefix = 'teachers/auth'
  #end
end