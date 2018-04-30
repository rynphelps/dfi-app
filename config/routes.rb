Rails.application.routes.draw do
  resources :actor_auditions
  resources :film_casters
  resources :roles
  resources :films
  resources :actor_pictures
  resources :actor_skills
  resources :actor_languages
  resources :actor_forms
  resources :other_forms_links
  resources :special_skills
  resources :picture_links
  resources :hair_colors
  resources :eye_colors
  resources :nationalities
  resources :actor_heights
  resources :actor_weights
  resources :audition_links
  resources :language_dialects
  resources :actors
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
