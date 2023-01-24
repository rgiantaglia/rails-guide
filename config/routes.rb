Rails.application.routes.draw do
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  Rails.application.routes.draw do

    resources :articles do
      resources :comments
    end

    root 'welcome#index'
  end

  
end
