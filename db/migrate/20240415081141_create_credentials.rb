class CreateCredentials < ActiveRecord::Migration[7.1]
  def change
    create_table :credentials do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :public_key
      t.integer :sign_count

      t.timestamps
    end
  end
end
