class ApplicationController < ActionController::Base
  before_action :http_header_log

  private

    def http_header_log
      logger.info("Request: #{request.headers}")
    end
end
