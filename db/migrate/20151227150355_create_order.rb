class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :phone
      t.string :name
      t.string :status, default: 'Not ready'
      t.belongs_to :cart

      t.timestamps
    end
  end
end
