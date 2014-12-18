Rails.application.routes.draw do
  #get 'doctors', to: DoctorsController.action(:index)
  resources :doctors, only: [:index, :show, :create]
end
