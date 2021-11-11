Rails.application.routes.draw do
  devise_for :user, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  get '/', to: "user#index"
  resources :user
  resources :blog
end