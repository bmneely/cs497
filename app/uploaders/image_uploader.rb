# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :small do
    process resize_to_fill: [30, 30]
  end

  version :preview do
    process resize_to_fill: [150, 150]
  end

  version :display do
    process resize_to_fill: [250, 250]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
