class MainController < ApplicationController
  def index
    @top_status = Status.last
  end
end
