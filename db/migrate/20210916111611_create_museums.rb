class CreateMuseums < ActiveRecord::Migration[6.0]
  def change
    create_table :museums do |t|
      t.string :postcode
      t.references :user_loci, null: false, foreign_key: true

      t.timestamps
    end
  end
end
