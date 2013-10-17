Hogwarts::Application.routes.draw do
  get "students/index"
  get "students/show"
  get "students/new"
  get "students/create"
  get "students/update"
  get "students/destroy"
resources :houses, only: [:show, :index]
end