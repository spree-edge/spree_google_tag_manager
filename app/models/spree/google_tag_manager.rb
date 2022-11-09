# frozen_string_literal: true

module Spree
  class GoogleTagManager < Spree::Base
    belongs_to :store, class_name: 'Spree::Store'

    validates :head_snippet, presence: true, uniqueness: { scope: :store_id }
    validates :body_snippet, presence: true, uniqueness: { scope: :store_id }

    def self.active(store = nil)
      store ||= Spree::Store.default
      Spree::GoogleTagManager.find_by(store_id: store.id)
    end
  end
end
