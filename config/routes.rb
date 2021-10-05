Rails.application.routes.draw do
  get 'poks/index'
  root "poks#index"

  namespace 'api' do
    namespace 'v1' do
      resources :pokemons
    end
  end
end
