Rails.application.routes.draw do
  root to: 'products#landing_page'
  resources :products do
    resources :reviews
  end
end
