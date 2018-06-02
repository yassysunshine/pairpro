class CreatePrepairs < ActiveRecord::Migration[5.1]
  def change
    create_table :prepairs do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
