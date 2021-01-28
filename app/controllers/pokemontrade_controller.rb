# frozen_string_literal: true

class PokemontradeController < ApplicationController
  def index
    @all_pokemontrades = Pokemontrade.all.order(created_at: :desc)
    render_json_reponse(:ok, { pokemontrades: @all_pokemontrades })
  end

  def create
    pokemontrade = CreatePokemontradeService.new(pokemontrade_params).call

    if pokemontrade.save
      render_json_reponse(:created, { pokemontrade: pokemontrade })
    else
      render_json_reponse(:unprocessable_entity, {})
    end
  end

  private def pokemontrade_params
    params.require(:pokemontrade).permit(
      :trainer01,
      :trainer02,
      pokemon_list01: %i[
        api_id
        name
        base_experience
        sprite_url
      ],
      pokemon_list02: %i[
        api_id
        name
        base_experience
        sprite_url
      ]
    )
  end
end
