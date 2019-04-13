Rails.application.routes.draw do

  resources :mines
  
  resources :titles  do
    resource :communications 
  end
  
  resources :answers  do
    resource :comments 
  end  
  
  resources :drills  do
    resource :reviews 
  end
  
  get 'ranks/index'
  get 'ranks/new'
  get 'ranks/show'
  
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/update'
  get 'reviews/create'
  
  get 'profiles/index'
  get 'profiles/new'
  get 'profiles/show'
  get 'profiles/edit'
  get 'drills/index'
  get 'drills/edit'
  
  get 'comments/index'
  get 'comments/new'
  get 'comments/edit'
  get 'comments/show',as: 'show_comment'
  
  
  get 'answers/index'
  get 'answers/new'
  get 'answers/edit'
  get 'answers/show'
  
  devise_for :users
  
  get '/top' => 'root#top'
  
  get 'comments/update'
  get 'comments/create'
  
  get 'answers/index'
  get 'answers/update'
  get 'answers/edit'
  get 'answers/new'
  get 'answers/create'
  
  resources :answers
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

