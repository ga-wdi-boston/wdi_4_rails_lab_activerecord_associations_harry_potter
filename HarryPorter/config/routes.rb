HarryPorter::Application.routes.draw do

  resources :students 

  resources :lectures

  resources :teachers 
  
   resources :houses, only: [:show, :index] do 
      resources :students
   end 
  
end
