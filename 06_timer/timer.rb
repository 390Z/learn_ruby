class Timer
  #write your code here
  attr_writer :seconds, :minutes

  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def time_string
    minutes = @seconds / 60
    hours = minutes / 60
    format("%02d:%02d:%02d", hours, minutes%60, seconds%60)
  end
end