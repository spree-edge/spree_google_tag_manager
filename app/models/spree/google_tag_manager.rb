module Spree
  class GoogleTagManager < Spree::Base
    validates :gtm_id, presence: true, uniqueness: { scope: :spree_store_id }
    validates :store, presence: true

    belongs_to :store

    def self.current(engine = nil, store = nil)
      store  ||= Spree::Store.default

      @tag_managers = Spree::GoogleTagManager.find_by(spree_store_id: store.id)
    end
  end 
end
