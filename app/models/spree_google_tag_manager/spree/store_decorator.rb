# frozen_string_literal: true

module SpreeGoogleTagManager
  module Spree
    module StoreDecorator
      def self.prepended(base)
        base.has_one :google_tag_manager, class_name: 'Spree::GoogleTagManager'
      end
    end
  end
end
::Spree::Store.prepend SpreeGoogleTagManager::Spree::StoreDecorator
