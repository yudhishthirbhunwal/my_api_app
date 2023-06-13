class MessageSerializer
  include FastJsonapi::ObjectSerializer

  attributes :content

  attribute :file_url
end
