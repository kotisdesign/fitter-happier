Rails.application.routes.draw do
  match '/fitter_happier' => 'fitter_happier#index', via: [:get, :post]
  match '/fitter_happier/site_check' => 'fitter_happier#site_check', via: [:get, :post]
  match '/fitter_happier/site_and_database_check' => 'fitter_happier#site_and_database_check', via: [:get, :post]
end
