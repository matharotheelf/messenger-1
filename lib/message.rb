class Message

attr_reader :content, :time, :id

def initialize(content, id = nil)
@content = content
@time = Time.now
@id = id
end

def limit
  @content[0..19]
end
end
