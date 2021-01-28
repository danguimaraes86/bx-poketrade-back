# frozen_string_literal: true

class CreateTrainerPokemonService
  def initialize(pokemontrade, trainer, pokemon_list)
    @pokemontrade = pokemontrade
    @trainer = trainer
    @pokemon_list = pokemon_list
  end

  def call
    trainer = Trainer.create(
      { nickname: @trainer, pokemontrade: @pokemontrade }
    )
    @pokemon_list.each do |pokemon|
      Pokemon.create({
                       api_id: pokemon['api_id'],
                       name: pokemon['name'],
                       base_experience: pokemon['base_experience'],
                       sprite_url: pokemon['sprite_url'],
                       trainer: trainer
                     })
    end
  end
end
