class PoksController < ApplicationController
  def index
    #@pokemons = Pokemon.all
    @pagy, @pokemons = pagy(Pokemon.all)
  end
end
