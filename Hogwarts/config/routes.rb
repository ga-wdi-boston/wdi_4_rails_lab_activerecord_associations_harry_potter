Hogwarts::Application.routes.draw do
  resources :students

  resources :professors
  
  resources :houses do
    resources :students
  end

end
