require"config/environment.rb"
loader = Dependencity.new()
def all
  loader.add_dir("events")
  loader.process_directories()
end

def load name
  loader.dir(name)
  loader.process_directories()
end
