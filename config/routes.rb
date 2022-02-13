Rails.application.routes.draw do

  root 'homes#top'
  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  get 'homes/about'=>'homes#about' ,as:'about'

    # 以下の行のonly: []内にupdateを追加
  resources :users, only: [:show, :edit, :update]

end
