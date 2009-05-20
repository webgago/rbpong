#Rbpong is a public domain pong clone.

require "rubygems"
require "rubygame"
require "lib/controller.rb"
require "lib/setup.rb"
include Rubygame
#TTF.setup is necessary for using and manipulating texts and fonts.
TTF.setup

setup = Setup.new
setup.run()
