class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    return render json: {response: 'connection test'}
  end
end
