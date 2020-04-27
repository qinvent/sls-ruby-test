require 'json'
require 'sentry-raven'

def hello(event:, context:)
  result = Raven.capture_exception('abc')
  {
    statusCode: 200,
    body: JSON.generate({
      result: result
    })
  }
end
