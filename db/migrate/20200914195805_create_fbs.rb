class CreateFbs < ActiveRecord::Migration[6.0]
  def change
    create_table :fbs do |t|
      t.string :name
      t.string :image
      t.string :uid

      t.timestamps
    end
  end
end
