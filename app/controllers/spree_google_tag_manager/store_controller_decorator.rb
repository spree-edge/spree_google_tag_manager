# frozen_string_literal: true

module SpreeGoogleTagManager
  module StoreControllerDecorator
    def self.included(base)
      base.include ::Spree::BaseHelper

      base.helper 'spree/google_tag_manager'
    end
  end
end

::Spree::StoreController.include(::SpreeGoogleTagManager::StoreControllerDecorator) if defined?(Spree::StoreController)
