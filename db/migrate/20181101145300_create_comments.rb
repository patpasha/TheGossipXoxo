class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.text :body
      t.string :anonymous_commentor

      t.references :gossip
      t.timestamps
    end
  end
end