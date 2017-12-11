class ApiController < ActionController::Base
    protect_from_forgery with: :null_session

    before_action :validate_header

    private

    def validate_header
      
    end
  end
  