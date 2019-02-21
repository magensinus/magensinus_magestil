# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"
  resources :home, only: [:index], controller: :home
  resources :about, only: [:index], controller: :about
  resources :campus, only: [:index], controller: :campus
  resources :quality, only: [:index], controller: :quality
  resources :partnerships, only: [:index], controller: :partnerships
  resources :categories, only: [:index, :show], controller: :categories do
    resources :enrollments, controller: :enrollments
  end
  resources :courses, only: [:index, :show], controller: :courses do
    resources :sections, only: [:index, :show], controller: :sections
  end
  resources :articles, only: [:index, :show], controller: :articles
  resources :contact, only: [:index], controller: :contact
  resources :students, only: [:index], controller: :students
  resources :parents, only: [:index], controller: :parents
  resources :tutors, only: [:index], controller: :tutors
  resources :terms_and_conditions, only: [:index], controller: :terms_and_conditions

  # Newsletter
  resource :newsletter, only: [:show], controller: :newsletter do
    member do
      post :subscribe
    end
  end
end
