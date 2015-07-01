Rails.application.routes.draw do
  resources :movies do
    resources :comments
  end
end
