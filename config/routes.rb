Rails.application.routes.draw do
  namespace :jobs do
    resources :jobs
  end
end
