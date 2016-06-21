Rails.application.routes.draw do
  resources :posts
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    match "/users/sign_in" => "sessions#options", via: :options
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
