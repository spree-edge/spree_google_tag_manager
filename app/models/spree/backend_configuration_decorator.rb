module Spree
  class BackendConfigurationDecorator
    def self.prepended(base)
      base::GTM_TABS        ||= [:google_tag_manager]
    end
  end
end
module Spree
  class BackendConfiguration < Preferences::Configuration
    GTM_TABS          ||= [:google_tag_manager]
  end
end
