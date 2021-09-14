Rails.application.routes.draw do
  root to: 'vaccination_logs#index'
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
end
