HappiHogwarts::Application.routes.draw do
  resources :houses
  resources :students
  resources :professors
  resources :lectures
end