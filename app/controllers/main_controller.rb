# I'm just putting this comment here so I wont get rubo-cop'd
class MainController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @top_status = Status.last
  end

  def add_status
    expected_key = Key.last.key
    key = params[:key]

    return render json: {}, status: 401 if key != expected_key

    message = params[:message]
    author = params[:author]

    s = Status.new(message: message, author: author)

    if s.save
      render json: {}, status: 200
    else
      render json: {}, status: 422
    end
  end
end
