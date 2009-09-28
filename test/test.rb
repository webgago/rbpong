require"config/environment.rb"
@loader = Dependencity.new()
def all
  @loader.add_dir("test/events")
  @loader.process_directories()
end

def load name
  @loader.add_dir(name)
  @loader.process_directories()
end
