class CreateOrder < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :phone
      t.string :message
      t.timestamps
    end
  end
end
