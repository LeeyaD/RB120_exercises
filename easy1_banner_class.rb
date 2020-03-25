class Banner
  def initialize(message, width = nil)
    @message = message
    @width = width
  end

  def to_s
    if too_narrow?
      "The width you gave is too narrow."
    elsif too_wide?
      "The width you gave is too wide."
    elsif uneven_width?
      "The width you gave must be even."
    else
      [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
    end
  end
  
  private
 
  def too_narrow?
    @width&.< (@message.size + 2)
  end

  def too_wide?
    @width&.> 80
  end

  def uneven_width?
    (@width&.% 2) != 0
  end

  def horizontal_rule
    "+" + "-" * (@width) + "+"
  end

  def empty_line
    "|" + " " * (@width) + "|"
  end

  def side_width
    (@width - @message.size) / 2
  end
  def message_line
    "|" + " " * (side_width) + "#{@message}" + " " * (side_width) + "|"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 48)
puts banner

# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# banner = Banner.new('')
# puts banner
# +--+
# |  |
# |  |
# |  |
# +--+