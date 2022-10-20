Deface::Override.new(
  virtual_path: 'spree/products/show',
  name: 'add_product_viewed_to_products_show',
  insert_bottom: '[data-hook="product_show"]',
  partial: 'spree/shared/google_tag_manager/product_view.js',
  original: '5426c263ccfe477b270b55024abebc77cf951c91'
)