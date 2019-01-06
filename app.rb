require 'sinatra/base'
require_relative './lib/message.rb'
require './config/data_mapper'

class Messenger < Sinatra::Base

  enable :sessions

  ENV['RACK_ENV'] ||= 'development'

  before do
    session[:id] ||= 1
  end

  get '/' do
    # session[:messages] ||= []
    # @messages = session[:messages]
    @messages = Message.all
    erb(:index)
  end

  post '/board' do
    Message.create(content: params[:message], tag: params[:tag])
    # session[:messages] << message
    # session[:id] += 1
    redirect '/'
  end

  get '/messages/:id' do
    @message = Message.get(params[:id])
    @id = params[:id]
    erb(:one_id)
  end

  get '/taglist/:tag' do
    @messages = Message.all(:tag => params[:tag])
    erb(:taglist)
  end

  post '/editor' do
    @id = params[:id]
    erb(:editor)
  end

  post '/edit' do
    @message = Message.get(params[:id])
    @message.update(:content => params[:text])
    redirect '/'
  end

  post '/delete' do
    @message = Message.get(params[:id])
    @message.destroy
    redirect '/'
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
