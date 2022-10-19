if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0')
  Deface::Override.new(
    virtual_path: 'spree/orders/show',
    name: 'add_purchase_event_to_order',
    insert_before: "#order_summary",
    partial: 'spree/shared/google_tag_manager/purchase.js',
  )
end
