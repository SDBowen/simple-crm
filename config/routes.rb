# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :organizations
    resources :people
  end
end
