Hogwarts::Application.routes.draw do
  resources :students

  resources :professors

  resources :sections

  resources :spells

  resources :lectures do
  	resources :sections
  end
  
  resources :houses do
    resources :students
  end

end
