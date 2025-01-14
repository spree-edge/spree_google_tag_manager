module Spree
  module Admin
    module MainMenu
      class AnalyticsBuilder
        include ::Spree::Core::Engine.routes.url_helpers

        def build
          items = [
            ::Spree::Admin::MainMenu::ItemBuilder.new("google_tag_manager", ::Spree::Core::Engine.routes.url_helpers.admin_google_tag_managers_path).
            with_manage_ability_check(::Spree::GoogleTagManager).
            with_match_path('/google_tag_manager').
            build
          ]

          ::Spree::Admin::MainMenu::SectionBuilder.new('Analytics', 'gtm.svg').
              with_manage_ability_check(::Spree::GoogleTagManager).
              with_items(items).
              build
        end
      end
    end
  end
end
