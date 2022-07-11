class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.text :message
      t.text :author

      t.timestamps
    end
  end
end
