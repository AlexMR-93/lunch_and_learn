class LearningResourcesSerializer
  include JSONAPI::Serializer
  attributes :id, :country, :title, :video_id, :alt_tag, :url
end
