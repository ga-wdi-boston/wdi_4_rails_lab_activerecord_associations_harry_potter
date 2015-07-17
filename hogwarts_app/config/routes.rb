HogwartsApp::Application.routes.draw do
  root 'houses#index'

  resources :sections

  resources :lectures do
    resources :sections
  end

  resources :professors

  resources :students

  resources :houses do
    resources :students
  end

  resources :spells
end
