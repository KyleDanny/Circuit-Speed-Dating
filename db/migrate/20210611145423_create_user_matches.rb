class CreateUserMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :user_matches do |t|
      t.references :match, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
