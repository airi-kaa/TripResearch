CarrierWave.configure do |config|
  config.storage   = :file
  config.root      = Rails.root
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
