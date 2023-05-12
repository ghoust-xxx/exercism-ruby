class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/^.*?\:\s+/, "").strip
  end

  def log_level
    @line.slice(1, @line.size-1).gsub(/].*/, "").downcase.strip
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
