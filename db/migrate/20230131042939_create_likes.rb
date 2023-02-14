class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|

      # t.bigint :likeable_id
      # t.string :likeable_type

      t.references :likeable, polymorphic: true

      # t.belongs_to :article, index:true
      # t.belongs_to :comment, index:true

      t.timestamps
    end

    # add_index :likes, [:likeable_type,:likeable_id]
  end
end
