if Rails.env.production?
AssetSync.configure do |config|
  config.fog_provider = APP_CONFIG.fog_provider
  config.fog_directory = APP_CONFIG.fog_directory
  config.aws_access_key_id = APP_CONFIG.aws_access_key
  config.aws_secret_access_key = APP_CONFIG.aws_secret_key

  # Increase upload performance by configuring your region
  # config.fog_region = 'eu-west-1'
  #
  # Don't delete files from the store
  config.existing_remote_files = "keep"
  #
  # Automatically replace files with their equivalent gzip compressed version
  config.gzip_compression = true
  #
  # Use the Rails generated 'manifest.yml' file to produce the list of files to
  # upload instead of searching the assets directory.
  config.manifest = true
  #
  # Fail silently.  Useful for environments such as Heroku
  # config.fail_silently = true
end
end