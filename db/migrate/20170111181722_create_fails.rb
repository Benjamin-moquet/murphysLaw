class CreateFails < ActiveRecord::Migration[5.0]
  def change
    create_table :fails do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
