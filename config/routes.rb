Rails.application.routes.draw do
  get 'home/index'

  resources :attendees do
    resources :contributions
  end
 
  root 'home#index'
end