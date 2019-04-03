Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #post 'ecommerce', :to => "webservice#index"
  get 'users', :to => "users#index"
  get 'users/:id', :to => "users#details"
  post 'users', :to => "users#create"
  
end
