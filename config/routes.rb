Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'short_urls#index'
  post 'short_urls', to: 'short_urls#create'
  get 'i/:short_url_hash', to: 'short_urls#show', as: :shortened

end
