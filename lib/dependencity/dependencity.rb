
class Dependencity
  attr_reader :directories
  def initialize
    @files = Array.new()
    @directories = Array.new()
    @ignore_list = Array.new()
    @patterns = Array.new()
  end
end
