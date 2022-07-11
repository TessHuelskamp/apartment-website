# I'm just putting this comment here so I wont get fined
class MainController < ApplicationController
  def index
    @top_status = Status.last
  end
end
