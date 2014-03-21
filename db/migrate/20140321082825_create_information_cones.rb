class CreateInformationCones < ActiveRecord::Migration
  def change
    create_table :information_cones do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
