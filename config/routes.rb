Rails.application.routes.draw do
  
  devise_for :users
  root 'polls#index'
  resources :polls do
    resources :answers do
      member do
        patch "upvote", to: "answers#upvote"
      end
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
