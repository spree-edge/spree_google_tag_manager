# frozen_string_literal: true

module Spree
  module GoogleTagManagerHelper
    def gtm_tracker
      @gtm_tracker ||= Spree::GoogleTagManager.active(current_store)
    end
  end
end
