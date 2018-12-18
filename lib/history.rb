class History

  def initialize
    @log = []
  end

  def store(message)
    @log << message
  end 

  def show_log
    p @log
  end 
end
