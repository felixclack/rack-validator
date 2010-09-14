require 'test/test_helper'

class RackValidatorTest < Test::Unit::TestCase

  def get_response(body)
    app = Rack::Builder.new do
      use Rack::Validator
      run lambda { |env| [200, {'Content-Type' => 'text/html'}, [body] ] }
    end
    Rack::MockRequest.new(app).get("")
  end

  context "Rack::Validator" do
    context "with html" do
      should "pass it to TidyResponse" do
        ::TidyResponse.expects(:new)
        ::TidyResponse.any_instance.expects(:to_s)
        @response = get_response(invalid_html)
      end
    end
  end
end
