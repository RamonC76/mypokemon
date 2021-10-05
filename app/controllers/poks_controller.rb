class PoksController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end
end
