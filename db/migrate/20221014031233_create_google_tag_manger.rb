class CreateGoogleTagManager < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_google_tag_mangers do |t|
      t.string :gtm_id
      t.boolean :active
      t.references :spree_store

      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
