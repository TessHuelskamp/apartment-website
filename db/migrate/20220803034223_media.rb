# frozen_string_literal: true

class Media < ActiveRecord::Migration[6.1]
  def change
    add_column :statuses, :media, :text
  end
end
