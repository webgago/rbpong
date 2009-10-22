class Registrar < Rubygame::EventHandler
  def initialize
  end
  def construct_hook object , name, trigger =  Rubygame::EventTriggers::YesTrigger.new() , action = Rubygame::EventActions::MethodAction.new(:handle) , consumes = false, active = true
    hook = {
    :owner => object, 
    :trigger => trigger,
    :action => action,
    :consumes => consumes,
    :active => true,
    :identifer => name
    }
    append_hook(hook)
  end
  def remove_hook name
    @event_handler.hooks.each do |hook|
      if hook[:identifer] == name
        @event_handler.remove_hook(hook)
        break
      end
    end
  end
end
