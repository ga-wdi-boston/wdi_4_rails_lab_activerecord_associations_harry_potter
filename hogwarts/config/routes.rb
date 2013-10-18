Hogwarts::Application.routes.draw do
resources :teachers
resources :students
resources :lectures
resources :houses, only: [:show, :index] do
  resources :students
end

end