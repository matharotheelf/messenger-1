require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id, Serial
  property :content, String
  property :created_at, DateTime
  property :tag, String


# attr_reader :content, :time, :id
#
# def initialize(content, id = nil)
# @content = content
# @time = Time.now
# @id = id
# end

  def limit
    @content[0..19]
  end
end
