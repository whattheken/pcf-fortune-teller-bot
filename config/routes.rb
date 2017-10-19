Rails.application.routes.draw do
  namespace :api do
    scope '/fortune' do
      get 'random', to: 'fortunes_api#random'
    end
  end

  resources :fortunes

  root 'fortunes#index'
end
