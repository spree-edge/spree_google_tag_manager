Deface::Override.new(
  virtual_path: 'spree/shared/_head',
  name: 'add_google_tag_manager_initializer_to_layout',
  insert_after: 'title',
  partial: 'spree/shared/google_tag_manager/initializer.js'
)
