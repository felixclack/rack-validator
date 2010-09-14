require 'test/test_helper'

class TidyResponseTest < Test::Unit::TestCase

  context "with invalid html" do
    setup { @tidy_response = TidyResponse.new(invalid_html) }

    context "when validated" do
      setup { @response = @tidy_response.to_s }

      should "add errors to the response" do
        @response.should == errors_html + invalid_html
      end
    end
  end
end
