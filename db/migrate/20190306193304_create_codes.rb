class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :url
      t.string :short_description

      t.timestamps
    end
    add_index :codes, :url, unique: true
  end
end
