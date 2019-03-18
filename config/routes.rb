Rails.application.routes.draw do
	get 'top' => 'post#top'
	get 'posts' => 'posts#index'
	get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
	patch 'posts/:id' => 'posts#update', as: 'update_post'
	# delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'
	root :to => 'posts#top'
  resources :posts
end
