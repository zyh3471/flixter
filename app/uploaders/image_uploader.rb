class ImageUploader < CarrierWave::Uploader::Base


    #include CarrierWave::MiniMagick
      storage :file
    #storage :aws


end
