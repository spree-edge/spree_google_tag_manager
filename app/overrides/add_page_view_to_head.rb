# frozen_string_literal: true

Deface::Override.new(
  virtual_path: 'spree/shared/_head',
  name: 'add_page_view_to_head',
  insert_before: 'meta',
  partial: 'spree/shared/google_tag_manager/page_view.js'
)
