require './lib/message'

describe Message do

  message_text = "Hello world!"
  let (:message) { Message.new(content: message_text) }

  it 'stores text' do
    expect(message.content).to eq(message_text)
  end
end
