require"rubygems"
require"rubygame"
require"yaml"
require"lib/dependencity/dependencity.rb"
include Rubygame
TTF.setup()

loader = Dependencity.new()
loader.add_rule("top")
loader.add_dir("lib/events")
loader.process_directories()
