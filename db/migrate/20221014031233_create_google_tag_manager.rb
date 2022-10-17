class CreateGoogleTagManager < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_google_tag_managers do |t|
      t.string :gtm_id
      t.boolean :active
      t.references :store

      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
