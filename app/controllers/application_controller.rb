class ApplicationController < ActionController::Base
  protect_from_forgery

  def render_api_response data, success=true, errors=[]
    render json: {data: data, success: success, errors: errors}
  end
end
