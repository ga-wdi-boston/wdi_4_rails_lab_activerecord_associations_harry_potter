Hogwarts::Application.routes.draw do
  resources :houses, only: [:show, :index]
end
