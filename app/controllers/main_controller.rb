# frozen_string_literal: true

class MainController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    @top_status = Status.last
    @last_ten_statuses = Status.order('created_at DESC').limit(10)
    @is_the_building_on_fire = @top_status.message.downcase.include?('fire')
  end

  # rubocop:disable Metrics/MethodLength
  def add_status
    expected_key = Key.last.key
    key = params[:key]

    return render json: {}, status: 401 if key != expected_key

    message = params[:message]
    author = params[:author]
    media = params[:media]

    s = Status.new(message: message, author: author, media: media)

    if s.save
      render json: {}, status: 200
    else
      render json: {}, status: 422
    end
  end
  # rubocop:enable Metrics/MethodLength
end
