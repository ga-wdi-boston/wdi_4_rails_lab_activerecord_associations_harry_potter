HogwartsApp::Application.routes.draw do
  resources :professors
  resources :houses do
    resources :students
  end
  resources :students
end
