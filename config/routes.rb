Rails.application.routes.draw do
  resources :users
  mount_devise_token_auth_for 'User', at: 'auth', :controllers => { :registrations => "users/registrations" }
end
