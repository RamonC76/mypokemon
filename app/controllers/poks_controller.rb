class PoksController < ApplicationController
  def index
    @pokemons = Pokemon.all
    @pokemons.then(&paginate)
  end
end
