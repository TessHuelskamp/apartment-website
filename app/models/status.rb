class Status < ApplicationRecord
  def nice_timestamp
    created_at.localtime.strftime('%Y-%m-%d %H:%M %Z')
  end
end
