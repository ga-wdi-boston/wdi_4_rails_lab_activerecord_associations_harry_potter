Hogwarts::Application.routes.draw do
  resources :students
  
  resources :houses do
    resources :students
  end

end
