Rails.application.routes.draw do
  root "poks#index"

  get "/poks", to: "poks#index"

  namespace 'api' do
    namespace 'v1' do
      resources :pokemons
    end
  end
end
