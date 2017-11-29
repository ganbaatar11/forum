Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get 'ask', to: 'questions#new'
  post 'ask', to: 'questions#create'
  get 'question/:id', to: 'questions#show', :as => 'show_question', constraints: { id: /\d+/ }

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  # get '*unmatched_route', to: 'application#raise_not_found'
end
