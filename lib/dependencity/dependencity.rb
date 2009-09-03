
class Dependencity
  attr_reader :directories
  def initialize
    @files = Array.new()
    @directories = Array.new()
    @ignore_list = Array.new()
    @patterns = Array.new()
  end
  def ignore name
    @ignore_list << name
  end
  def add_dir name
    @directories << name
  end
  def add_rule name
    @patterns << name
  end
  def move_to_front value
    filename = @files[value]
    @files.pop_at(value)
    file.unshift(filename)
  end
end
