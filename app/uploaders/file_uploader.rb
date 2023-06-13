class FileUploader < Shrine
  # plugins and uploading logic 
  # use Shrine::Storage::Tus for temporary storage
  storages[:cache] = storages[:tus]
end
