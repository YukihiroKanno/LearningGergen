class AddProfileToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :profile, :text
  end
end
