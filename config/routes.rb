Rails.application.routes.draw do
  root "welcome#index"
  get "signup", to:"signup#new"
  post "signup", to:"signup#create"
end
