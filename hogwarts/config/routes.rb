Hogwarts::Application.routes.draw do
  
  resources :teachers do 
  	resources :skills
  	resources :lectures
    resources :spells
  end
  
  resources :students do
  	resources :skills
  	resources :lectures
    resources :spells
  end

  resources :lectures
 

  resources :houses, only: [:show, :index] do
    resources :students
  end
  
end
