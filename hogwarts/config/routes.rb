Hogwarts::Application.routes.draw do
  get "teachers/index"
  get "teachers/show"
  get "teachers/new"
  get "teachers/create"
  get "teachers/edit"
  get "teachers/update"
  get "teachers/destroy"
  resources :students

  resources :lectures

  resources :houses, only: [:show, :index] do
    resources :students
  end
  
end
