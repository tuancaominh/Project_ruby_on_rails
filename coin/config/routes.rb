Rails.application.routes.draw do
  get 'cryptocurrencie/home'
  get 'cryptocurrencie/getdata'
  get 'cryptocurrencie/getdetail'
  get 'cryptocurrencie/load'


  #  root 'static_pages#home'
  # get  '/help',    to: 'static_pages#help'
  # get  '/about',   to: 'static_pages#about'
  # get  '/contact', to: 'static_pages#contact'
  # get  '/signup',  to: 'users#new'
  # resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
