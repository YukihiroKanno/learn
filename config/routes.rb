Rails.application.routes.draw do
  devise_for :users
  
  root 'root#index'
  
  get 'root/top' => 'root#top', as: 'root_top'
  get 'root/policy' => 'root#policy', as: 'root_policy'
  get 'root/useage' => 'root#useage', as: 'root_useage'  
 
 
end
