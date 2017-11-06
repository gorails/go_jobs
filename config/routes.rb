Rails.application.routes.draw do
  namespace :jobs do
    resources :jobs do
      collection do
        get 'jobs_list'
        get 'show_jobs_list'
      end
    end
  end
end
