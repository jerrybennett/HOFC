Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :topics
      resources :cards
    end
  end
end
