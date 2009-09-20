require"config/environment.rb"
loader = Dependencity.new()
def all
  loader.add_dir("events")
end

def load name
  load.dir(name)
end
loader.process_directories()
