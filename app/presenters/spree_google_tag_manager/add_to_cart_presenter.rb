# frozen_string_literal: true

module SpreeGoogleTagManager
  class AddToCartPresenter
    attr_reader :page_name, :current_user

    def initialize(page_name, current_user)
      @page_name = page_name
      @email = current_user.present? ? current_user.email : 'guest'
    end

    def call
      {
        event: 'PageView',
        detail: {
          page_name: page_name,
          user_email: current_user
        }
      }
    end
  end
end
