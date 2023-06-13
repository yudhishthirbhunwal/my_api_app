class Message < ApplicationRecord
  include FileUploader::Attachment(:file) # adds an `file` virtual attribute 
end
