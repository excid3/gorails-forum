Rails.application.routes.draw do
  devise_for :users

  resources :forum_threads do
    resources :forum_posts, module: :forum_threads
  end
end
