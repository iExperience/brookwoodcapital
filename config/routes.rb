Rails.application.routes.draw do
  root "home#index"

  # About routes
  get "/who-we-are" => "home#about", as: :about
  get "/learning" => "home#learning", as: :learning
  get "/interning" => "home#interning", as: :interning
  get "/exploring" => "home#exploring", as: :exploring
  get "/parents" => "home#parents", as: :parents
  get "/pricing" => "home#pricing", as: :pricing

  # Courses routes
  get "/courses", to: redirect("/courses/product-management")
  get "/courses/:name" => "courses#show", as: :course,
    name: /finance|consulting|ux-design|coding-ios|coding-web-dev|coding|product-management|data-science/

  # Misc routes
  get "/faq" => "home#faq", as: :faq
  get "/alumni" => "home#alumni", as: :alumni
  get "/privacy" => "home#privacy_policy", as: :privacy

  # This line is last so that if no other routes are matched, the
  # course entered as /course_name, as was the old convention, is captured 
  # and redirected to the right location.
  get "/coding" => redirect("/courses/coding")
  get "/consulting" => redirect("/courses/consulting")
  get "/finance" => redirect("/courses/finance")

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :alumni, only: [:index, :show]
end
