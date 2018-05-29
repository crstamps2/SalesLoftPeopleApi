Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :people do
    collection do
      get :allEmailBreakdown
    end

    member do
      get :emailBreakdown
    end
  end
end
