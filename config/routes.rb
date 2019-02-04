# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"
  resources :home, only: [:index], controller: :home
  resources :about, only: [:index], controller: :about
  resources :campus, only: [:index], controller: :campus
  resources :quality, only: [:index], controller: :quality
  resources :partnerships, only: [:index], controller: :partnerships
  resources :courses, only: [:index], controller: :courses
  resources :articles, only: [:index], controller: :articles
  resources :contact, only: [:index], controller: :contact
  resources :newsletter, only: [:index], controller: :newsletter
  resources :students, only: [:index], controller: :students
  resources :parents, only: [:index], controller: :parents
  resources :tutors, only: [:index], controller: :tutors
  resources :terms_and_conditions, only: [:index], controller: :terms_and_conditions
end
