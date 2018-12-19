require 'sinatra/base'
require_relative './lib/message.rb'

class Messenger < Sinatra::Base

  enable :sessions

  get '/' do
    session[:messages] ||= []
    @messages = session[:messages]
    erb(:index)
  end

  post '/board' do
      message = Message.new(params[:message])
      session[:messages] << message
      redirect '/'
  end

  get '/messages/:id' do
    
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
