class CreateSupermarkets < ActiveRecord::Migration
  def change
    create_table :supermarkets do |t|

      t.timestamps
    end
  end
end
