class ApplicationController < ActionController::Base

  rescue_from ActionController::RoutingError do |exception|
    logger.error 'Routing error occurred'
    render template: 'layouts/_404', status: 404
  end

  def catch_404
    raise ActionController::RoutingError.new(params[:path])
  end

end
