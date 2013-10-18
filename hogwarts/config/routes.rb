Hogwarts::Application.routes.draw do
  
  resources :teachers do 
  	resources :skills
  	resources :lectures
  end
  
  resources :students do
  	resources :skills
  	resources :lectures
  end

  resources :spells

  resources :houses, only: [:show, :index] do
    resources :students
  end
  
end
