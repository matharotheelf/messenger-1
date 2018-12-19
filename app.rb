require 'sinatra/base'
require_relative './lib/message.rb'

class Messenger < Sinatra::Base

  enable :sessions

  before do
   session[:id] ||= 1
  end

  get '/' do
    session[:messages] ||= []
    @messages = session[:messages]
    erb(:index)
  end

  post '/board' do
      message = Message.new(params[:message], session[:id])
      p message.id
      session[:messages] << message
      session[:id] += 1
      redirect '/'
  end

  get '/messages/:id' do
    messages = session[:messages]
    id = session[:id]
    @message = messages[id - 1]
    erb(:one_id)
  end
end



 # session[:history] = History.new
      # @history = session[:history]
      # session[:message] = params[:message]
      # @message = session[:message]
      # @history.store(@message)
      # erb :message_board


# require ‘./lib/message’

# get / do
# session[:messages] || = []
# @messages = session[:messages]
# erb(:index)
# end

# post /message do
#   message = Message.new(params[:message])
#   session[:messages] << message
#   redirect /
# end
