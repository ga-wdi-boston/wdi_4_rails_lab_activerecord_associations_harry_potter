HarryPorter::Application.routes.draw do
  
  get "teachers/new"
  get "teachers/index"
  get "teachers/show"
  get "teachers/create"
  get "teachers/edit"
  get "teachers/update"
  get "teachers/destory"
  resources :students 

  resources :lectures

  resources :teachers 
  
   resources :houses, only: [:show, :index] do 
      resources :students
   end 
  
end
