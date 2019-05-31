Rails.application.routes.draw do

      #

  namespace :api  do
    namespace :v1   do
      resources :parents do
        resources :siblings, :path => "children"
      end

      resources :siblings do
        resources :milestone
        resources :kind_words
        resources :nice_deeds
      end

    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
