module Api
  module V1
    class LocationsController < ApplicationController

      before_filter :restrict_access
      respond_to :json

      def index
        @locations = Location.all
        respond_with @locations
      end

      private

      def restrict_access
        api_key = ApiKey.find_by_access_token(params[:access_token])
        head :unauthorized unless api_key
      end
    end
  end
end
