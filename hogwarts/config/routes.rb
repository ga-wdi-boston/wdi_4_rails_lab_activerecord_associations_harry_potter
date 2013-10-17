Hogwarts::Application.routes.draw do
resources :students
resources :houses, only: [:show, :index] do
  resources :students
end

end