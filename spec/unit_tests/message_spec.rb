require './lib/message'

describe Message do

  let (:message_text) { double(:message_text) }
  let (:message) { Message.new(message_text) }
  
    it 'stores text' do
      expect(message.message_contents).to eq(message_text)
    end

end 
