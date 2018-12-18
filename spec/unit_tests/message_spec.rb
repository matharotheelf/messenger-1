require './lib/message'

describe Message do

  let (:message_text) { double(:message_text) }
  let (:message) { Message.new }
  
    it 'responds to #write' do
      expect(message).to respond_to(:write).with(1)
      # .write(message_text)).to eq(message)
    end

    it '#write stores text' do
      expect(message.write(message_text)).to eq(message_text)
    end
end 
