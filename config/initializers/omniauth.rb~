#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :twitter, ENV['3Wawo9aEnJOjK1XDirnA'],ENV#['obmGiVsKb7Jq1XgXtwLrbIXMEHx4Q93iaWakxI9CVQ']
#end

OmniAuth.config.logger = Rails.logger

raw_config = File.read("#{ENV['HOME']}/.credentials/applications.yml")

twitter = YAML.load(raw_config)['twitter']
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, twitter['3Wawo9aEnJOjK1XDirnA'], twitter['obmGiVsKb7Jq1XgXtwLrbIXMEHx4Q93iaWakxI9CVQ']
end


