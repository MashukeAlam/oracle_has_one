Rails.application.routes.draw do
  resources :sidemodules
  resources :companies
  resources :companyinvoices
  resources :companybills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
