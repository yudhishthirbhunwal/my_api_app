class MessageSerializer
  include FastJsonapi::ObjectSerializer

  attributes :content

  attribute :file_url do |message|
    Rails.application.routes.url_helpers.rails_blob_path(message.file, only_path: true) if message.file.attached?
  end
end