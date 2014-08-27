class CreateSemantics < ActiveRecord::Migration
  def change
    create_table :semantics do |t|

      t.timestamps
    end
  end
end
