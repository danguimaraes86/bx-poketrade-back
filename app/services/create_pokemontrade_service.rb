# frozen_string_literal: true

class CreatePokemontradeService
  def initialize(pokemontrade_params)
    @trainer01 = pokemontrade_params['trainer01']
    @trainer02 = pokemontrade_params['trainer02']
    @pokemon_list01 = pokemontrade_params['pokemon_list01']
    @pokemon_list02 = pokemontrade_params['pokemon_list02']
  end

  def call
    @pokemontrade = Pokemontrade.create
    CreateTrainerPokemonService.new(@pokemontrade, @trainer01, @pokemon_list01).call
    CreateTrainerPokemonService.new(@pokemontrade, @trainer02, @pokemon_list02).call
    @pokemontrade
  end
end
