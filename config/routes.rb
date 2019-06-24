Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"

  namespace :api  do
    namespace :v1   do
      resources :users do
        resources :milestones
        resources :kind_words
        resources :nice_deeds
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# resources :parents do
#   resources :users, :path => "children"
# end
#
# resources :users do
#   resources :milestones
# end
#
# resources :users do
#   resources :kind_words
# end
#
# resources :siblings do
#   resources  :nice_deeds
# end
