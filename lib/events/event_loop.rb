class EventLoop
  def initialize
    @queue = Rubygame::EventQueue.new()
    @queue.enable_new_style_events()
  end
  def run
    loop do
      @queue.each do |event|
        handle(event)
      end
    end
  end
end
