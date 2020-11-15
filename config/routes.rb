Rails.application.routes.draw do
  root 'murmurs#new'
  resources :murmurs do
    collection do
      post :confirm
    end
  end
end
