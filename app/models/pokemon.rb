# frozen_string_literal: true

class Pokemon
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :api_id, type: Integer
  field :name, type: String
  field :base_experience, type: Integer
  field :sprite_url, type: String

  embedded_in :trainer
end
