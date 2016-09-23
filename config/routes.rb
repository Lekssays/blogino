Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/53cr3t_p4n3l', as: 'rails_admin'
  get 'tags/:tag', to: 'posts#index', as: :tag
  devise_for :users
  root to: "posts#index"
  resources :posts do
    resources :comments
  end
end
