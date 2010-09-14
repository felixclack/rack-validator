require 'lib/rack/tidy_response'

module Rack
  class Validator

    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)

      @response = response.respond_to?(:body) ? ::TidyResponse.new(response.body).to_s : response
      [status, headers, @response]
    end
  end
end
