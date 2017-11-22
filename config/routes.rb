Rails.application.routes.draw do
  get 'welcome/index'
  resource  :achievement, only: [:new, :create]
  root to: 'welcome#index'
end
