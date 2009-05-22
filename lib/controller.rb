#Rorgeball
#Copyright (C) 2008 Han Dao and contributors
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#You can contact the author at wikipediankiba@gmail.com

class Controller
  include Rubygame::EventHandler::HasEventHandler
  def initialize screen
    @screen = screen
    @queue = Rubygame::EventQueue.new()
    @queue.enable_new_style_events()
    @clock = Rubygame::Clock.new()
    @clock.target_framerate = 30
    @background = Surface.load("data/playfield.png")
  end
  def fps_update
   @screen.title = "FPS: #{@clock.framerate()}"
  end
  def hook_quit
    quit_hooks = {
      :escape => :quit,
      Rubygame::Events::QuitRequested => :quit
    }
    make_magic_hooks(quit_hooks)
  end
  def run
    hook_quit()
    loop do
      @queue.each do |event|
        handle(event)
      end
      fps_update()
      draw()
      @clock.tick()
    end
  end
  def quit
    Rubygame.quit()
    exit
  end
  def draw
    @background.blit(@screen,[0,0])
  end
end
