class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :quote
      t.string :handle

      t.timestamps
    end
  end
end
