require 'tidy'

class TidyResponse

  def initialize(body)
    @body = body
    ::Tidy.path = '/usr/lib/libtidy.A.dylib'
  end

  def to_s
    tidy = Tidy.open

    tidy.clean(@body)

    tidy.errors.join("<br />") + @body
  end

  def w3c_errors
    response = Net::HTTP.post_form(
      URI.parse("http://validator.w3.org/check"),
      {
        'ss'=>0,
        'fragment'=>@body
      }
    )
    status = response['x-w3c-validator-status']
    if status != 'Valid'
      response.body
    else
      nil
    end
  end
end
