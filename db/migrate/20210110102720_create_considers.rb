class CreateConsiders < ActiveRecord::Migration[5.2]
  def change
    create_table :considers do |t|
      t.integer:year
      t.integer:jirei
      t.integer:user_id
      t.text:summary
      t.text:q1
      t.text:q2
      t.text:q3
      t.text:q4
      t.timestamps
    end
  end
end
