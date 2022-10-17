module Spree
  class GoogleTagManager < Spree::Base
    belongs_to :store, class_name: 'Spree::Store'

    validates :gtm_id, presence: true, uniqueness: { scope: :store_id }
    validates :store_id, presence: true

    def self.current(store = nil)
      store  ||= Spree::Store.default

      @tag_managers = Spree::GoogleTagManager.find_by(store_id: store.id)
    end
  end 
end
