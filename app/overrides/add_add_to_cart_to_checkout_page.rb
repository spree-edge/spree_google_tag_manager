# frozen_string_literal: true

Deface::Override.new(
  virtual_path: 'spree/orders/edit',
  name: 'add_add_to_cart_to_checkout_page',
  insert_bottom: '[data-hook="outside_cart_form"]',
  partial: 'spree/shared/google_tag_manager/add_to_cart.js'
)
