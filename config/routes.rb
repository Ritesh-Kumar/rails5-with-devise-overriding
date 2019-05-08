Rails.application.routes.draw do

  # devise_for :users, controllers: {sessions: 'users/sessions'  }
  devise_for :users, controllers: {registrations: 'users/registrations'  }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :secret_codes
  root 'secret_codes#welcome'

  post '/generate_codes' => 'secret_codes#generate_codes'
end
