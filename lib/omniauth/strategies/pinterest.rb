require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pinterest < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://api.pinterest.com',
        :authorize_url => '/oauth',
        :token_url => '/v1/oauth/token'
      }

      def request_phase
        options[:scope] ||= 'read'
        options[:response_type] ||= 'code'
        super
      end

    end
  end
end
