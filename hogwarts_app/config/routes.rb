HogwartsApp::Application.routes.draw do
  root 'houses#index'
  resources :students
  resources :houses do
    resources :students
  end
end
