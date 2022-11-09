# frozen_string_literal: true

Spree::Core::Engine.add_routes do
  namespace :admin, path: Spree.admin_path do
    resource :google_tag_managers
  end
end
