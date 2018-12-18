class History

  def initialize
    @log = []
  end

  def store(message)
    @log << message
  end 

  def log
    @log
  end 
end
