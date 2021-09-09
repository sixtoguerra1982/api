class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :uf_value
      t.date :date_request

      t.timestamps
    end
  end
end
