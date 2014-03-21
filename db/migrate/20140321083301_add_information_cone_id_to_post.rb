class AddInformationConeIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :information_cone_id, :integer
  end
end
