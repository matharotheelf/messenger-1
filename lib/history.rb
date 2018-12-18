class History

  def initialize
    @log = []
  end

  def store(message)
    @log << message
  end 

  def show_log
    @log
  end 
end
