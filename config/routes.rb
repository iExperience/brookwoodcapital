Rails.application.routes.draw do
  root "home#index"

  # About routes
  get "/who-we-are" => "home#about", as: :about
  get "/investment-process" => "home#investment_process", as: :investment_process
  get "/pitch" => "home#pitch", as: :pitch
end
