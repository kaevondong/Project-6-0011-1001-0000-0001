# File Created on
Rails.application.routes.draw do
  get 'navigation/filters'
  get 'navigation/search'
  get 'navigation/search_bar'
  resources :items
  # File Edited on 07/20/2020 by Kevin Dong: Navigation actions initialized
  get 'navigation/filters'
  get 'navigation/search_bar'
  get 'navigation/search'
  # File Edited on 07/20/2020 by Kevin Dong: Profile actions initialized
  get 'profile/modify_profile'
  get 'profile/modify_email'
  get 'profile/modify_pass'

  get 'profile/userProfile'

  # File Edited on 07/14/2020 by Yifan Yao: Home initialized, as DocumentRoot
  get 'home/index'
  root to: 'home#index'
  # File Edited on 07/13/2020 by Yifan Yao: Device initialized
  # File Edited on 07/19/2020 by Yifan Yao: Link more views into controllers
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
