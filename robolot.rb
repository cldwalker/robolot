require 'sinatra/base'
require 'sinatra/synchrony'

class Robolot < Sinatra::Base
  register Sinatra::Synchrony

  get '/' do
    'At your service'
  end

  get '/sleep/:num' do |num|
    num = [100, num.to_i].min
    EM::Synchrony.sleep  num
    "Sir, I slept for #{num} second(s). Anything else I can zzz..."
  end
end
