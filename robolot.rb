require 'sinatra/base'
require 'sinatra/synchrony'

class Robolot < Sinatra::Base
  register Sinatra::Synchrony

  get '/' do
    'At your service'
  end

  get '/sleep/:num' do |num|
    EM::Synchrony.sleep  num.to_i
    "Sir, I slept for #{num} seconds. Anything else I can ?zzz..."
  end
end
