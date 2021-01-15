class CreateCommunications < ActiveRecord::Migration[5.2]
  def change
    create_table :communications do |t|
      t.integer:title_id
      t.text:comment
      t.timestamps
      t.integer:user_id
    end
  end
end
