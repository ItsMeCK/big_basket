class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.boolean :availability
      t.string :provider

      t.timestamps
    end
  end
end