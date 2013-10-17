HogwartsApp::Application.routes.draw do
  resources :professors

  resources :sections

  resources :lectures do
    resources :sections
end
  resources :students

  resources :houses do
    resources :students
  end
end
