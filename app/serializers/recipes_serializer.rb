class RecipesSerializer
  include JSONAPI::Serializer
  set_id {nil}
  attributes :id,:title,:url,:country,:image
end
