Rails.application.routes.draw do
  get 'attendees/home'
  post 'attendees/home'

  resources :attendees
  
 
  root 'attendees#home'
end