module Api
  module V1
    class PokemonsController < ApplicationController
      def index
        pokemons = Pokemon.order('created_at DESC');
        #@pokemons = Pokemon.all
        render json: {status: 'SUCCESS', message: 'Loaded Pokemons', data:pokemons}, status: :ok
      end

      def show
        pokemon = Pokemon.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded Pokemon', data:pokemon}, status: :ok
      end

      def create
        pokemon = Pokemon.new(pokemon_params)

        if pokemon.save
          render json: {status: 'SUCCESS', message: 'Pokemon Saved', data:pokemon}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Pokemon Not Saved', data:pokemon.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        pokemon = Pokemon.find(params[:id])
        pokemon.destroy
        render json: {status: 'SUCCESS', message: 'Deleted Pokemon', data:pokemon}, status: :ok
      end

      def update
        pokemon = Pokemon.find(params[:id])
        if pokemon.update(pokemon_params)
          render json: {status: 'SUCCESS', message: 'Updated Pokemon', data:pokemon}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Pokemon Not Updated', data:pokemon.errors}, status: :unprocessable_entity
        end
      end

      private
      def pokemon_params
        params.permit(:nombre, :prenom, :type1, :type2, :total, :hp, :attack, :defense, :spatk, :spdef, :speed, :generation, :legendary)
      end
    end
  end
end
