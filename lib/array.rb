class Array
  def push(e)
    puts ::ColorizedString[e.to_s].colorize(color: :green, mode: :bold)
    self << e
  end
end 