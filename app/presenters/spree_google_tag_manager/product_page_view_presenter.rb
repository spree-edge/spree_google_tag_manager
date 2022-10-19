# frozen_string_literal: true

module SpreeGoogleTagManager
  class ProductPageViewPresenter
    attr_reader :product, :user_email

    def initialize(product, current_user = nil)
      @product = product
      @user_email = current_user.present? ? current_user.email : 'guest'
    end

    def call
      {
        event: 'ProductPageView',
        detail: {
          product: [{
            sku: product.master.sku,
            name: product.name,
            price: product.price
          }]
        },
        user_email: user_email
      }
    end
  end
end
