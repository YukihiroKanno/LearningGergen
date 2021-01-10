Rails.application.routes.draw do

  resources :considers
  get 'considers/show' => 'considers#show', as:'show_consider'
   
  resources :mines
  delete 'mines/:id' => 'mines#destroy', as: 'destroy_mine'
  
  resources :titles  do
    resource :communications 
  end
  
  resources :answers  do
    resource :comments 
  end  
  
  resources :drills  do
    resource :reviews 
  end
  
  get 'members' => 'members#index'
  get 'members/show' => 'members#show', as:'show_member'
  
  get 'ranks/index'
  get 'ranks/show'
  
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/update'
  post 'reviews/create'
  
  devise_for :users
  
  get '/top' => 'root#top'
  
  resources :comments
  resources :drills
  resources :profiles
  
  get 'comments/new/:id' => 'comments#new'
  post 'comments/create' => 'comments#create'

  patch 'answers/:id' => 'answers#update', as: 'update_answer'
  
  root 'root#index'
  
  get 'root/top' => 'root#top', as: 'root_top'
  get 'root/policy' => 'root#policy', as: 'root_policy'
  get 'root/useage' => 'root#useage', as: 'root_useage'  
 
end

