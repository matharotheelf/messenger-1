require './lib/message'

describe Message do

  let (:message_text) { double(:message_text) }
  let (:message) { Message.new(message_text) }

    it 'stores text' do
      expect(message.content).to eq(message_text)
    end
end
