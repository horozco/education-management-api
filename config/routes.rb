Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  api version: 1, module: "api/v1" do
    resources :organizations, only: [:index, :show] do
      resources :coaches, only: [:index, :show]
      resources :grades, only: [:index, :show]
    end
  end
end
