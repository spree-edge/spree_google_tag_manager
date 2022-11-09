# frozen_string_literal: true

Deface::Override.new(
  virtual_path: 'spree/layouts/spree_application',
  name: 'add_script_tag_to_body',
  insert_bottom: '[data-hook="body"]',
  text: "<% if gtm_tracker.active %>
          <%= raw(gtm_tracker.body_snippet) %></script>
        <% end %>"
)
