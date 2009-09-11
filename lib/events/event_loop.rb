class EventLoop
  def initialize
    @queue = Rubygame::EventQueue.new()
    @queue.enable_new_style_events()
  end
end
