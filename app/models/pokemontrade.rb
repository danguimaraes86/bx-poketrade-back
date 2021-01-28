# frozen_string_literal: true

class Pokemontrade
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps::Created

  embeds_many :trainers
end
