require "tus/server"
# require "tus/storage/s3"
require "tus/storage/filesystem"

# s3_options = Rails.application.credentials.s3

Tus::Server.opts[:storage] = Tus::Storage::Filesystem.new("public/tus") # Tus::Storage::S3.new(**s3_options)
# Tus::Server.opts[:redirect_download] = true # redirect download requests to S3
