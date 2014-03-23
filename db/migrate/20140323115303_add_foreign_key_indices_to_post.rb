class AddForeignKeyIndicesToPost < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.remove :user_id, :information_cone_id
      t.references :user, index: true
      t.references :information_cone, index: true
    end
  end
end
