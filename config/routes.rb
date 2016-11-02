Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers, controllers: {
        registrations: 'trainers/registrations'
      }
  resources :trainers
  patch '/capture', to: 'pokemons#capture'
  patch '/pokemons/:id/damage', to: 'pokemons#damage', as: 'damage_pokemon'
  get '/pokemons/new', to: 'pokemons#new', as: 'new_pokemon'
  post '/pokemons', to: 'pokemons#create'
end