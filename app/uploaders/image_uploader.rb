class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # 一時ファイルの保存先を完全に別フォルダに変更
  def cache_dir
    "#{Rails.root}/carrierwave_cache"
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
