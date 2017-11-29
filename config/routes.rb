Rails.application.routes.draw do

  devise_for :users
   if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
   end
  resources :users, only: [:show, :edit, :update]
  root  to: 'top#index'  #to:省略化
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create, :show]
  resources :answers, only: [:new, :create, :edit, :update]


end
