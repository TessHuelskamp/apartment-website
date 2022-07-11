class Status < ApplicationRecord
  def nice_timestamp
    created_at.strftime('%Y-%m-%d %H:%M')
  end
end
