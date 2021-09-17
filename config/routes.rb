Rails.application.routes.draw do
  root to: 'vaccination_logs#index'
  get "vaccination_logs/passport" => "vaccination_logs#passport"
  get "vaccination_logs/index_log" => "vaccination_logs#index_log"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  devise_for :medical_users, controllers: {
    sessions: 'medical_users/sessions',
    passwords: 'medical_users/passwords',
    registrations: 'medical_users/registrations'
  }
  resources :vaccination_logs do
    collection do
      get 'search'
    end
  end
  
end
