CarrierWave.configure do |config|

  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.storage = :fog
    config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJUYWIUY3GHBHVKLA',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
    }
    config.fog_directory = 'epolitic'
  end

end