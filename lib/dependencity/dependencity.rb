
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
end
