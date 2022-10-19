# frozen_string_literal: true

module SpreeGoogleTagManager
  class PageViewPresenter
    attr_reader :page_name, :user_email

    def initialize(page_name, current_user = nil)
      @page_name = page_name
      @user_email = current_user.present? ? current_user.email : 'guest'
    end

    def call
      {
        event: 'PageView',
        detail: {
          page_name: page_name,
          user_email: user_email
        }
      }
    end
  end
end
