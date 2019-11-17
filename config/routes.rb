Rails.application.routes.draw do


  get 'attendees/thanks'

  resources :attendees
  
 
  root 'attendees#new'
end