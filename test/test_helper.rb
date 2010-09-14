require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'mocha'
require 'rack'
require 'lib/rack/validator'
require 'rack/mock'
require 'matchy'

class Test::Unit::TestCase

  def invalid_html
    "<html><head><title>Title</title></head><body><p id='duplicate'><h1 id='duplicate'>Invalid header</h1></p></body></html>"
  end

  def errors_html
    "line 1 column 1 - Warning: missing <!DOCTYPE> declaration\nline 1 column 125 - Warning: inserting implicit <p>\nline 1 column 81 - Warning: <h1> anchor \"duplicate\" already defined\nline 1 column 125 - Warning: trimming empty <p>\n"
  end
end
