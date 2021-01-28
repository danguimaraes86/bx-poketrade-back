# frozen_string_literal: true

class Trainer
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :nickname, type: String

  embeds_many :pokemons
  embedded_in :pokemontrade
end
