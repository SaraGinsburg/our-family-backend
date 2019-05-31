Rails.application.routes.draw do

      # resources :milestone
      # resources :parents
      # resources :kind_words
      # resources :nice_deeds
      #

  namespace :api  do
    namespace :v1   do
      resources :siblings
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
