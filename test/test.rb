require"config/environment.rb"
loader = Dependencity.new()
loader.add_dir("events")
loader.process_directories()
