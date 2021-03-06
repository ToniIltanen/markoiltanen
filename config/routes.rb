Rails.application.routes.draw do

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#main'
  match "*path", to: "application#catch_404", via: :all
end
