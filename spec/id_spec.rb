require './lib/message.rb'

describe "id" do
  it "shows the message id" do
    first_message = Message.new("123456789123456789123456789", 1)
    expect(first_message.id).to eq 1
  end
end
