require 'sinatra/base'

class TestApp < Sinatra::Base
  get('/') { '<h1>It works!</h1>' }
end
