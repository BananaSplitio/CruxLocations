module Api
  module V1
    class LocationsController < ApplicationController
unless Rails.env.test?
      before_filter :restrict_access
    end
      respond_to :json

      def index
        @locations = Location.all
        respond_with locations: @locations
      end

      private

      def restrict_access
        api_key = ApiKey.find_by_access_token(params[:access_token])
        head :unauthorized unless api_key
      end
    end
  end
end
