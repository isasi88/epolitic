CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AKIAJUYWIUY3GHBHVKLA'],                        # required
    :aws_secret_access_key  => ENV['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'],                        # required
    :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV['epolitic']                     # required
end