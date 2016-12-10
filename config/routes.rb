Rails.application.routes.draw do
  resources :topics do
    collection do
     get 'about'
   end
    member do
      post 'upvote'
      post 'downvote'
    end
  end
  root "topics#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
