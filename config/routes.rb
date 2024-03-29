Rails.application.routes.draw do

  get "/decks" => "decks#index"
  get "/decks/new" => "decks#new"
  get "/deck/:id" => "decks#show", as: :deck
  post "/decks" => "decks#create"
  get "/decks/:id/edit" => "decks#edit"
  patch "deck/:id" => "decks#update"
  delete "decks/:id" => "decks#destroy"
end
