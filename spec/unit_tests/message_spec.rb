require './lib/message'

describe Message do

  let (:message_text) { double(:message_text) }
  let (:message) { Message.new }
  
    it 'stores a message' do
      expect(message).to respond_to(:write).with(1)
      # .write(message_text)).to eq(message)
    end
end 
