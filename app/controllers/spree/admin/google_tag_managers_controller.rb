# frozen_string_literal: true

module Spree
  module Admin
    class GoogleTagManagersController < ResourceController
      def create
        @google_tag_manager = Spree::GoogleTagManager.new(permitted_resource_params)
        if @google_tag_manager.save
          redirect_to edit_admin_google_tag_managers_path
          flash[:success] = flash_message_for(@google_tag_manager, :successfully_created)
        else
          respond_with(@google_tag_manager) do |format|
            format.html { render action: :new, status: :unprocessable_entity }
            format.js { render layout: false, status: :unprocessable_entity }
          end
        end
      end

      def update
        if @google_tag_manager.update(permitted_resource_params)
          redirect_to edit_admin_google_tag_managers_path
          flash[:success] = flash_message_for(@google_tag_manager, :successfully_updated)
        else
          respond_with(@google_tag_manager) do |format|
            format.html { render action: :edit, status: :unprocessable_entity }
            format.js { render layout: false, status: :unprocessable_entity }
          end
        end
      end

      def show
        if @google_tag_manager.present?
          respond_with(@google_tag_manager) do |format|
            format.html { render action: :edit, status: :unprocessable_entity }
            format.js { render layout: false, status: :unprocessable_entity }
          end
        else
          respond_with(@google_tag_manager) do |format|
            format.html { render action: :new, status: :unprocessable_entity }
            format.js { render layout: false, status: :unprocessable_entity }
          end
        end
      end

      private

      def load_resource
        @google_tag_manager = current_store.google_tag_manager
      end

      def permitted_resource_params
        params.require(:google_tag_manager).permit!
      end
    end
  end
end
