Rails.application.routes.draw do
  namespace :Api  do
    namespace :V1   do

      resources :siblings

      resources :parents do
        resources :siblings, :path => "children"
      end

      resources :siblings do
        resources :milestones
      end

      resources :siblings do
        resources :kind_words
      end

      resources :siblings do
        resources  :nice_deeds
      end

      resources :milestones
      resources :kind_words
      resources :nice_deeds

    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
