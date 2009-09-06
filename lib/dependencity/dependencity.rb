
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
  def get_files directory
    files = Dir.glob( directory + "/" + File.join("**","*.rb")).sort()
    return files
  end
  def move_to_front value
    filename = @files[value]
    @files.pop_at(value)
    file.unshift(filename)
  end
  def process_rules files
    go_down = @patterns.length()
    go_down.times do |rule|
      counter = 0
      files.each do |file|
        if file.match(@rules[go_down])
          move_to_front(counter)
        end
        counter += 1
      end
      go_down -= 1
    end
    return files
  end
  def require_all
    files.each do |file|
      require file
      puts"Loaded file: #{file}"
    end
  end
  def load_directory directory
    files = get_files(directory)
    files = process_rules(files)
    require_all(files)
  end
  def process_directories
    @directories.each do |directory|
      load_directory(directory)
    end
  end
end
