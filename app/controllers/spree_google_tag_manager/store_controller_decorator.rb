module SpreeGoogleTagManager
  module StoreControllerDecorator
    def self.included(base)
      base.include ::Spree::BaseHelper
      
      base.helper 'spree/google_tag_manager'
    end
  end
end

if defined?(Spree::StoreController)
  ::Spree::StoreController.include(::SpreeGoogleTagManager::StoreControllerDecorator)
end
