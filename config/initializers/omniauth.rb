require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_id, :store => OpenID::Store::Filesystem.new('/tmp'), :name => :telescope, :identifier => 'https://loginhq.co.uk'
end


